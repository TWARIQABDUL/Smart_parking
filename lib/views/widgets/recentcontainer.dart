import 'package:flutter/material.dart';
import 'package:smart_parking/views/widgets/custom_text.dart';
import 'package:smart_parking/utils/build_icon_circle.dart';

class RecentActivity extends StatelessWidget {
  const RecentActivity({super.key});

  @override
  Widget build(BuildContext context) {
    const Color appColor = Color(0XFF0fc875);

    return Container(
      margin: const EdgeInsets.symmetric(vertical: 6),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 6,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        children: [
          // Top Row
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  buildIconCircle(Icons.local_taxi, appColor),
                  const SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomText(
                        content: "Token#123",
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                      CustomText(
                        content: "DHAKA-D-123L",
                        textColor: Colors.grey[700],
                        fontSize: 14,
                      ),
                    ],
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  CustomText(
                    content: "Paid",
                    fontWeight: FontWeight.bold,
                    textColor: Colors.green,
                    fontSize: 14,
                  ),
                  CustomText(
                    content: "Rwf 3,500",
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                  CustomText(
                    content: "1hr 12min",
                    textColor: Colors.grey[700],
                    fontSize: 13,
                  ),
                ],
              ),
            ],
          ),

          const SizedBox(height: 12),

          // Bottom Row
          Row(
            children: [
              buildIconCircle(Icons.timelapse_outlined, Colors.orange),
              const SizedBox(width: 8),
              CustomText(
                content: "10:40 AM",
                fontWeight: FontWeight.bold,
                fontSize: 14,
              ),
              const SizedBox(width: 20),
              buildIconCircle(Icons.person_2_outlined, Colors.blue),
              const SizedBox(width: 8),
              CustomText(
                content: "Abdulazizi",
                fontWeight: FontWeight.bold,
                fontSize: 14,
              ),
            ],
          ),
        ],
      ),
    );
  }

  // Helper widget for circular icons
  // Widget _buildIconCircle(IconData icon, Color color) {
  //   return Container(
  //     padding: const EdgeInsets.all(6),
  //     decoration: BoxDecoration(
  //       color: color.withOpacity(0.15),
  //       shape: BoxShape.circle,
  //     ),
  //     child: Icon(icon, color: color, size: 20),
  //   );
  // }
}
