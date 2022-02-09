import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../core/service_locator/service_locator.dart';
import '../../core/util/common_builders.dart';
import '../../core/util/common_dimens.dart';
import '../../core/util/common_slivers.dart';
import 'cubit/topics_board_cubit.dart';

const _appBarHeading = 'Your Wish Topics';

class TopicsBoardPage extends StatelessWidget {
  const TopicsBoardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => injector<TopicsBoardCubit>()..init(),
      child: SafeArea(
        child: Builder(builder: (context) {
          return Scaffold(
            floatingActionButton: FloatingActionButton(
              onPressed: context.read<TopicsBoardCubit>().addWish,
              child: const Icon(Icons.add),
            ),
            body: BlocBuilder<TopicsBoardCubit, TopicsBoardState>(
                builder: (context, state) {
              return state.when(
                initial: CommonBuilders.buildEmptyState,
                loading: CommonBuilders.buildLoadingState,
                loaded: (topics) => LoadedTopicsBoardPage(topics: topics),
                error: (error) => CommonBuilders.buildErrorState(
                  error: error,
                  onTryAgain: context.read<TopicsBoardCubit>().retry,
                ),
              );
            }),
          );
        }),
      ),
    );
  }
}

class LoadedTopicsBoardPage extends StatelessWidget {
  const LoadedTopicsBoardPage({
    Key? key,
    required this.topics,
  }) : super(key: key);
  final List<String> topics;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        const SliverAppBar(
          title: Text(_appBarHeading),
        ),
        SliverPadding(
          padding: const EdgeInsets.all(defaultPadding),
          sliver: CommonSlivers.getGrid(
            topics,
            childBuilder: (context, index, child) => GestureDetector(
              onTap: () =>
                  context.read<TopicsBoardCubit>().openTopic(topics[index]),
              child: child,
            ),
          ),
        ),
      ],
    );
  }
}
