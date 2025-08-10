import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smart_parking/views/widgets/custom_text.dart';
import 'package:smart_parking/views/widgets/custombutton.dart';
import 'package:smart_parking/views/widgets/dashboardcard.dart';
import 'package:smart_parking/views/widgets/recentcontainer.dart';

class Home extends GetView {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    const appColor = Color(0XFF0fc875);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: appColor,
        elevation: 0,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomText(
              content: "Down Town Market",
              textColor: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
            CustomText(
              content: "September, 2, 2024 14:AM",
              textColor: Colors.white,
            ),
          ],
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 8.0),
            child: Icon(Icons.notification_add, color: Colors.white),
          ),
        ],
      ),

      body: SingleChildScrollView(
  child: Column(
    children: [
      Container(
        color: appColor,
        padding: const EdgeInsets.all(8),
        child: SizedBox(
          height: 230,
          child: GridView.count(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            crossAxisCount: 2,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
            childAspectRatio: 2,
            children: [
              Dashboardcard(
                icon: Icon(Icons.local_taxi, size: 50, color: appColor),
                meta: "49",
                titles: "Total Check",
              ),
              Dashboardcard(
                icon: Icon(Icons.local_taxi, size: 50, color: appColor),
                meta: "49",
                titles: "Checked Out",
              ),
              Dashboardcard(
                icon: Icon(Icons.local_taxi, size: 50, color: appColor),
                meta: "49",
                titles: "Reserved",
              ),
              Dashboardcard(
                icon: Icon(Icons.local_taxi, size: 50, color: appColor),
                meta: "49",
                titles: "Available",
              ),
            ],
          ),
        ),
      ),
      const SizedBox(height: 10),

      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Custombutton(content: "Check In", bgColor: appColor,
              action: () {
                Get.toNamed("/checkin");
              },
            ),
            const SizedBox(width: 10),
            Custombutton(content: "Check Out", bgColor: Colors.redAccent),
          ],
        ),
      ),

      const SizedBox(height: 10),


      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CustomText(
              content: "Recent Activity",
              textColor: Colors.black,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
            TextButton(
              onPressed: () {},
              child: CustomText(
                content: "View All",
                textColor: appColor,
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),

      const SizedBox(height: 6),

 
      const RecentActivity(
        title: "Check In",
        plateNumber: "ABC-1234",
        status: true,
        timeOut: "10:30 AM",
        driverName: "John Doe",
        amount: "\$20.00",
        time: "1hr 12min",
      ),
      const SizedBox(height: 10),
      const RecentActivity(
        title: "Check Out",
        plateNumber: "XYZ-5678",
        status: false,
        timeOut: "11:00 AM",
        driverName: "Jane Smith",
        amount: "\$15.00",
        time: "1hr 30min",
      ),
      const SizedBox(height: 10),
      const RecentActivity(
        title: "Reservation",
        plateNumber: "LMN-9012",
        status: true,
        time: "55min",
        driverName: "Alice Johnson",
        amount: "\$25.00",
        timeOut: "12:30 PM",
      ),

      const SizedBox(height: 10),
    ],
  ),
)
    );
  }
}