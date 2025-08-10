import 'package:flutter/material.dart';
import 'package:smart_parking/views/widgets/custom_text.dart';
import 'package:smart_parking/utils/build_icon_circle.dart';

class RecentActivity extends StatelessWidget {
  final String title;
  final String plateNumber;
  final bool status;
  final String timeOut;

  final String time;
  final String driverName;
  final String amount;

  const RecentActivity({super.key, required this.title, required this.plateNumber, required this.status, required this.time, required this.driverName, required this.amount, required this.timeOut});

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
                        content: title,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                      CustomText(
                        content: plateNumber,
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
                    content: status ? "Paid" : "Unpaid",
                    fontWeight: FontWeight.bold,
                    textColor: status ? Colors.green : Colors.red,
                    fontSize: 14,
                  ),
                  CustomText(
                    content: amount,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                  CustomText(
                    content: time,
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
                content: timeOut,
                fontWeight: FontWeight.bold,
                fontSize: 14,
              ),
              const SizedBox(width: 20),
              buildIconCircle(Icons.person_2_outlined, Colors.blue),
              const SizedBox(width: 8),
              CustomText(
                content: driverName,
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
