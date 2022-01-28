import 'package:flutter/material.dart';

const _textBorderRadius = 12.0;
const _marginSmall = 8.0;

typedef ChangeCallback = void Function(String);

class WishTextField extends StatefulWidget {
  final String initialData;
  final String title;
  final ChangeCallback? onChanged;
  final VoidCallback? onEditingCompleted;

  const WishTextField({
    Key? key,
    required this.title,
    required this.initialData,
    this.onChanged,
    this.onEditingCompleted,
  }) : super(key: key);

  @override
  State<WishTextField> createState() => _WishTextFieldState();
}

class _WishTextFieldState extends State<WishTextField> {
  late final TextEditingController controller;
  @override
  void initState() {
    super.initState();
    controller = TextEditingController(text: widget.initialData);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(_marginSmall),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: _marginSmall),
            child: Text(widget.title),
          ),
          TextField(
            controller: controller,
            onChanged: widget.onChanged,
            onEditingComplete: widget.onEditingCompleted,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(_textBorderRadius),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
