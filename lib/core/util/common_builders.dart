import 'package:flutter/material.dart';
import 'package:wishey/core/models/failure.dart';
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

  static Widget buildErrorState({
    required Failure error,
    required VoidCallback onTryAgain,
  }) =>
      Center(
        child: Column(
          children: [
            const Text(
              'An error occured',
              style: TextStyle(color: Colors.red),
            ),
            const SizedBox(
              height: defaultPadding,
            ),
            ElevatedButton(
              onPressed: onTryAgain,
              child: const Text('Try Again'),
            )
          ],
        ),
      );
}
