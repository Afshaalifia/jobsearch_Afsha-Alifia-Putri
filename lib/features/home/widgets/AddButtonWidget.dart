// features/home/widgets/AddButtonWidget.dart

import 'package:flutter/material.dart';

class AddButtonWidget extends StatelessWidget {
  final VoidCallback onPressed;

  const AddButtonWidget({required this.onPressed, super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: onPressed,
      backgroundColor: Colors.green,
      child: const Icon(Icons.add),
    );
  }
}
