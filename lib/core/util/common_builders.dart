import 'package:flutter/material.dart';
import '../models/failure.dart';
import 'common_dimens.dart';

class CommonBuilders {
  static Widget buildLoadingState() => const Center(
        key: Key('_wisheyLoader'),
        child: SizedBox(
          height: progressIndicatorSize,
          width: progressIndicatorSize,
          child: CircularProgressIndicator(),
        ),
      );

  static Widget buildEmptyState() => const SizedBox(
        key: Key('_wisheyEmptyState'),
      );

  static Widget buildErrorState({
    required Failure error,
    required VoidCallback onTryAgain,
  }) =>
      Center(
        key: ObjectKey(error),
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
