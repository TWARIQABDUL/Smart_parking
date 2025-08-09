import 'package:flutter/material.dart';
import 'package:smart_parking/views/widgets/custom_text.dart';

class Dashboardcard extends StatelessWidget {
  final String titles, meta;
  final Widget icon;
  // final Color? colors;
  Dashboardcard({
    required this.icon,
    required this.meta,
    required this.titles,
    // this.colors,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          icon,
          const SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomText(
                content: titles,
                textColor: Colors.black,
                fontSize: 16,
              ),
              CustomText(
                content: meta,
                textColor: Colors.black,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
