import 'package:flutter/material.dart';
import 'package:wishey/core/util/common_dimens.dart';

class CommonBuilders {
  static Widget buildLoadingState() => const Center(
        child: SizedBox(
          height: progressIndicatorSize,
          width: progressIndicatorSize,
          child: CircularProgressIndicator(),
        ),
      );

  static Widget buildEmptyState() => const SizedBox();

  static Widget buildErrorState(Object? error) => const Center(
        child: Text(
          'An error occured',
          style: TextStyle(color: Colors.red),
        ),
      );
}
