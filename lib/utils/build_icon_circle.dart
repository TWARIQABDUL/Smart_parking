import 'package:flutter/material.dart';

Widget buildIconCircle(IconData icon, Color color) {
    return Container(
      padding: const EdgeInsets.all(6),
      // decoration: BoxDecoration(
      //   color: color.withOpacity(0.15),
      //   // shape: BoxShape.circle,
      // ),
      child: Icon(icon, color: color, size: 20),
    );
  }