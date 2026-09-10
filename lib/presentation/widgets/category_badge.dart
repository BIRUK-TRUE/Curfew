import 'package:flutter/material.dart';

class CategoryBadge extends StatelessWidget {
  final String label;
  final Color color;

  const CategoryBadge({super.key, required this.label, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(6),
      ),
      child: Text(label, style: TextStyle(color: Colors.white)),
    );
  }
}
