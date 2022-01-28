part of 'topics_board_cubit.dart';

@freezed
class TopicsBoardState with _$TopicsBoardState {
  const factory TopicsBoardState.initial() = InitialTopicsBoardState;
  const factory TopicsBoardState.loading() = LoadingTopicsBoardState;
  const factory TopicsBoardState.loaded({
    required List<String> topics,
  }) = LoadedTopicsBoardState;

  const factory TopicsBoardState.error(Object? error) = ErrorTopicsBoardState;
}
