// core/global_component/ButtonComponent.dart

import 'package:flutter/material.dart';

class ButtonComponent extends StatelessWidget {
  final String label;
  final VoidCallback onPressed;
  final Color color;

  const ButtonComponent({super.key, required this.label, required this.onPressed, this.color = Colors.green});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: color,  // Mengganti 'primary' dengan 'backgroundColor'
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      ),
      child: Text(
        label,
        style: const TextStyle(color: Colors.white, fontSize: 16),
      ),
    );
  }
}

