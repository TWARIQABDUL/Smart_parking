import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:smart_parking/views/widgets/custom_input.dart';

class Checkin extends StatelessWidget {
  const Checkin({super.key});

  @override
  Widget build(BuildContext context) {
    const appColor = Color(0XFF0fc875);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: appColor,
        title: const Text('Check In'),
        centerTitle: true,
      ),
      backgroundColor: appColor,
      resizeToAvoidBottomInset: true,
      body: Column(
        children: [
          // Top Car Icon Section
          SizedBox(
            height: 200,
            child: Center(child: Text('🚗', style: TextStyle(fontSize: 90))),
          ),

          // Form Section
          Expanded(
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.blueGrey[50],
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(25),
                  topRight: Radius.circular(25),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.05),
                    blurRadius: 10,
                    offset: const Offset(0, -4),
                  ),
                ],
              ),
              child: SingleChildScrollView(
                child: FormBuilder(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // License Plate Input
                      CustomInput(
                        name: 'license_plate',
                        labelText: 'License Plate',
                      ),
                      SizedBox(height: 20),
                      CustomInput(name: "cname",labelText: "Customer Name",),
                      const SizedBox(height: 25),
                      CustomInput(name: "phone",labelText: "Phone Number",),
                      const SizedBox(height: 25),
                      CustomInput(name: "spot",labelText: "Spot Number",),
                      const SizedBox(height: 25),
                
                      // Check In Button
                      SizedBox(
                        width: double.infinity,
                        height: 50,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: appColor,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                            elevation: 3,
                          ),
                          onPressed: () {
                            // Handle check-in logic
                          },
                          
                          child: const Text(
                            'Check In',
                            style: TextStyle(fontSize: 18, color: Colors.white),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
