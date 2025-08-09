import 'package:flutter/material.dart';
import 'package:smart_parking/views/widgets/custom_text.dart';

class Custombutton extends StatelessWidget {
  final String content;
  final Color bgColor;
  const Custombutton({
    required this.content,
    required this.bgColor,
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: bgColor, // green like AppBar
          foregroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          padding: const EdgeInsets.symmetric(vertical: 14),
          elevation: 3,
        ),
        onPressed: () {},
        child: CustomText(
          content: content,
          textColor: Colors.white,
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
