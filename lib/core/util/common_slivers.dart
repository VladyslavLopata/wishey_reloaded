import 'package:flutter/material.dart';

import '../widgets/wish_card.dart';
import 'common_dimens.dart';

class _CommonGrid {
  const _CommonGrid();
  SliverGridDelegate get gridDelegate =>
      const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: defaultPadding,
        crossAxisSpacing: defaultPadding,
      );

  SliverChildDelegate getDelegate(
    List<String> cardItems, {
    required Widget Function(BuildContext, int, Widget) childBuilder,
  }) =>
      SliverChildBuilderDelegate(
        (context, index) {
          final wishCard = WishCard(
            key: ValueKey(cardItems[index]),
            title: cardItems[index],
          );
          return childBuilder(context, index, wishCard);
        },
        childCount: cardItems.length,
      );
}

class CommonSlivers {
  static const _commonGrid = _CommonGrid();
  static SliverGrid getGrid(
    List<String> cardItems, {
    required Widget Function(BuildContext context, int index, Widget child)
        childBuilder,
  }) =>
      SliverGrid(
        key: ObjectKey(cardItems),
        delegate: _commonGrid.getDelegate(
          cardItems,
          childBuilder: childBuilder,
        ),
        gridDelegate: _commonGrid.gridDelegate,
      );
}
