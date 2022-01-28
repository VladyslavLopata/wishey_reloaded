import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wishey/core/models/wish_list.dart';
import 'package:wishey/core/service_locator/service_locator.dart';
import 'package:wishey/core/util/common_builders.dart';
import 'package:wishey/core/util/common_slivers.dart';
import 'package:wishey/features/wishes_board/cubit/wishes_board_cubit.dart';

class WishesBoardPage extends StatelessWidget {
  final String topic;
  const WishesBoardPage({Key? key, required this.topic}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => injector<WishesBoardCubit>()..init(topic),
      child: SafeArea(
        child: Builder(builder: (context) {
          return Scaffold(
            floatingActionButton: FloatingActionButton(
              onPressed: () => context.read<WishesBoardCubit>().addWish(topic),
              child: const Icon(Icons.add),
            ),
            body: BlocBuilder<WishesBoardCubit, WishesBoardState>(
              builder: (context, state) {
                return state.when(
                  initial: CommonBuilders.buildEmptyState,
                  loading: CommonBuilders.buildLoadingState,
                  loaded: (wishes) => WishesBoardPageLoadedView(
                    wishes: wishes,
                    topic: topic,
                  ),
                  error: CommonBuilders.buildErrorState,
                );
              },
            ),
          );
        }),
      ),
    );
  }
}

class WishesBoardPageLoadedView extends StatelessWidget {
  final String topic;
  final List<Wish> wishes;
  const WishesBoardPageLoadedView({
    Key? key,
    required this.wishes,
    required this.topic,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          title: Text(topic),
        ),
        SliverPadding(
          padding: const EdgeInsets.all(8.0),
          sliver: CommonSlivers.getGrid(
            wishes.map((wish) => wish.title).toList(),
            childBuilder: (context, index, child) {
              return GestureDetector(
                onTap: () {},
                child: child,
              );
            },
          ),
        ),
      ],
    );
  }
}
