import 'package:flutter/material.dart';
import '../util/common_dimens.dart';

class WishCard extends StatelessWidget {
  final String title;
  const WishCard({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final cardWidth = screenSize.width / 2.0 - 16.0;
    return Container(
      width: cardWidth,
      height: cardWidth,
      decoration: BoxDecoration(
        color: Colors.deepOrange,
        borderRadius: BorderRadius.circular(12.0),
      ),
      padding: const EdgeInsets.all(defaultPadding),
      child: Center(
        child: Text(
          title,
          textAlign: TextAlign.center,
          style: const TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
