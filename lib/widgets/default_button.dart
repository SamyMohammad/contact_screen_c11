import 'package:flutter/material.dart';

class DefaultButton extends StatelessWidget {
  final String label;
  final Color color;
  final VoidCallback onPressed;
  const DefaultButton(
      {super.key,
      required this.label,
      required this.color,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(vertical: 8),
          backgroundColor: color,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(18))),
      child: Text(
        label,
        style: const TextStyle(color: Colors.black, fontSize: 20),
      ),
    );
  }
}
