import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wishey/core/models/wish_list.dart';
import 'package:wishey/core/service_locator/service_locator.dart';
import 'package:wishey/core/util/common_builders.dart';
import 'package:wishey/core/util/common_dimens.dart';
import 'package:wishey/features/create_wish/cubit/create_wish_cubit.dart';
import 'package:wishey/features/create_wish/cubit/create_wish_state.dart';
import 'package:wishey/features/create_wish/view_models/loaded_state_view_model.dart';
import 'package:wishey/features/create_wish/widgets/wish_text_field.dart';

class CreateWishPage extends StatelessWidget {
  final Wish wish;
  final bool shouldReplaceExisting;
  const CreateWishPage({
    Key? key,
    this.shouldReplaceExisting = false,
    this.wish = const Wish(
      title: '',
      topic: '',
    ),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Builder(
        builder: (context) {
          return WillPopScope(
            onWillPop: () async {
              ScaffoldMessenger.of(context).clearMaterialBanners();
              return true;
            },
            child: BlocProvider(
              create: (_) => injector<CreateWishCubit>()
                ..init(
                  wish: wish,
                  shouldReplaceExisting: shouldReplaceExisting,
                ),
              child: BlocConsumer<CreateWishCubit, CreateWishState>(
                buildWhen: (_, current) => current is! SaveErrorWishState,
                listener: (context, state) => state.maybeWhen(
                  saveError: () =>
                      ScaffoldMessenger.of(context).showMaterialBanner(
                    MaterialBanner(
                      content: const Text('Title and topic cannot be empty!'),
                      actions: [
                        TextButton(
                          onPressed: () {
                            ScaffoldMessenger.of(context)
                                .clearMaterialBanners();
                          },
                          child: const Text('Dismiss'),
                        ),
                      ],
                    ),
                  ),
                  orElse: () => null,
                ),
                builder: (context, state) => state.maybeWhen(
                  loading: CommonBuilders.buildLoadingState,
                  loaded: (shouldShowSaveButton, _, viewModel) =>
                      LoadedWishPage(
                    shouldShowSaveButton: shouldShowSaveButton,
                    wishData: viewModel,
                  ),
                  serverError: (error) => CommonBuilders.buildErrorState(
                    error: error,
                    onTryAgain: () => context.read<CreateWishCubit>().onRetry(
                          wish: wish,
                          shouldReplaceExisting: shouldReplaceExisting,
                        ),
                  ),
                  orElse: CommonBuilders.buildEmptyState,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

class LoadedWishPage extends StatelessWidget {
  const LoadedWishPage({
    Key? key,
    required this.wishData,
    required this.shouldShowSaveButton,
  }) : super(key: key);

  final LoadedStateViewModel wishData;
  final bool shouldShowSaveButton;

  @override
  Widget build(BuildContext context) {
    final _fieldsList = wishData.fields;
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          title: const Text('Create New Wish'),
          actions: !shouldShowSaveButton
              ? null
              : [
                  IconButton(
                    onPressed: context.read<CreateWishCubit>().save,
                    icon: const Icon(Icons.save),
                  ),
                ],
        ),
        SliverPadding(
          padding: const EdgeInsets.all(defaultPadding),
          sliver: SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                final field = wishData.fields[index];
                return WishTextField(
                  key: Key(field.content),
                  initialData: field.content,
                  title: _extractTitleFromField(field),
                  onChanged: (text) =>
                      context.read<CreateWishCubit>().onFieldUpdated(
                            field: field,
                            text: text,
                          ),
                );
              },
              childCount: _fieldsList.length,
            ),
          ),
        ),
      ],
    );
  }
}

extension CreateWishPageExtension on LoadedWishPage {
  String _extractTitleFromField(WishField field) {
    return field.when(
      title: (_) => 'Title',
      note: (_) => 'Note',
      link: (_) => 'Link',
      price: (_) => 'Price',
      topic: (_) => 'Topic',
    );
  }
}
