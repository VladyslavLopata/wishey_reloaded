import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:wishey/core/router/auto_route.dart';
import 'package:wishey/features/topics_board/use_cases/get_topics.dart';

part 'topics_board_cubit.freezed.dart';
part 'topics_board_state.dart';

@injectable
class TopicsBoardCubit extends Cubit<TopicsBoardState> {
  final GetTopicsUseCase _getTopicsUseCase;
  final AppRouter _router;

  TopicsBoardCubit(this._getTopicsUseCase, this._router)
      : super(const InitialTopicsBoardState());

  Future<void> init() async {
    emit(const TopicsBoardState.loading());

    final errorProneTopics = await _getTopicsUseCase();

    errorProneTopics.when(
      failure: (problem) {
        emit(TopicsBoardState.error(problem));
      },
      success: (value) {
        emit(
          TopicsBoardState.loaded(
            topics: value,
          ),
        );
      },
    );
  }

  void openTopic(String topic) {
    _router.push(WishesBoardRoute(topic: topic));
  }

  void addWish() {
    _router.push(CreateWishRoute());
  }
}
