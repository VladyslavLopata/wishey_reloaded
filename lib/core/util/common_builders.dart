import 'package:flutter/material.dart';

class CommonBuilders {
  static Widget buildLoadingState() => const Center(
        child: SizedBox(
          height: 24,
          width: 24,
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
