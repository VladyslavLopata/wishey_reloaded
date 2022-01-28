import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wishey/core/service_locator/service_locator.dart';
import 'package:wishey/core/util/common_builders.dart';
import 'package:wishey/features/create_wish/cubit/create_wish_cubit.dart';
import 'package:wishey/features/create_wish/cubit/create_wish_state.dart';
import 'package:wishey/features/create_wish/view_models/loaded_state_view_model.dart';
import 'package:wishey/features/create_wish/widgets/wish_text_field.dart';

class CreateWishPage extends StatelessWidget {
  final String topic;
  const CreateWishPage({Key? key, this.topic = ''}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (_) => injector<CreateWishCubit>()..init(topic),
        child: BlocBuilder<CreateWishCubit, CreateWishState>(
          builder: (context, state) => state.when(
            initial: CommonBuilders.buildEmptyState,
            loading: CommonBuilders.buildLoadingState,
            loaded: (shouldShowSaveButton, viewModel) => LoadedWishPage(
              shouldShowSaveButton: shouldShowSaveButton,
              wishData: viewModel,
            ),
          ),
        ),
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
          padding: const EdgeInsets.all(8.0),
          sliver: SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                final field = wishData.fields[index];
                return WishTextField(
                  key: Key(field.content),
                  initialData: field.content,
                  title: _extractTitleFromField(field),
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
