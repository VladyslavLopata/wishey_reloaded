import 'package:freezed_annotation/freezed_annotation.dart';

part 'loaded_state_view_model.freezed.dart';

@freezed
class LoadedStateViewModel with _$LoadedStateViewModel {
  const factory LoadedStateViewModel({
    @Default(
      [
        TopicWishField(),
        TitleWishField(),
        NoteWishField(),
        PriceWishField(),
        LinkWishField(),
      ],
    )
        List<WishField> fields,
  }) = _LoadedStateViewModel;
}

@freezed
class WishField with _$WishField {
  const factory WishField.topic({@Default('') String content}) = TopicWishField;
  const factory WishField.title({@Default('') String content}) = TitleWishField;
  const factory WishField.note({@Default('') String content}) = NoteWishField;
  const factory WishField.price({@Default('') String content}) = PriceWishField;
  const factory WishField.link({@Default('') String content}) = LinkWishField;
}
