import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smart_parking/views/widgets/custom_text.dart';

class WelcomePage extends GetView {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: Center(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 400,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.blueGrey[50],
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                      blurRadius: 8,
                      offset: Offset(0, 4),
                    ),
                  ],
                ),
                alignment: Alignment.center,
                child: Text('🚗', style: TextStyle(fontSize: 80)),
              ),
            ),

            const SizedBox(height: 24),

            // Title
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Column(
                children: [
                  CustomText(
                    content: "Welcome to the Smart Parking App!",
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    textColor: Colors.blueGrey[900],
                  ),
                  const SizedBox(height: 12),

                  CustomText(
                    content:
                        "Monitor parking space availability and control in real-time, directly from your dashboard.",
                  ),
                  const SizedBox(height: 32),

                  // Continue Button
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(vertical: 14),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        backgroundColor: Colors.green[700],
                      ),
                      onPressed: () {
                        Get.offAllNamed('/home');
                        // Get.offAllNamed('/home');
                      },
                      child: CustomText(
                        content: "Continue",
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        textColor: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
