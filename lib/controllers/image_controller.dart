import 'package:get/get.dart';
// import 'package:image_picker/image_picker.dart';
// import 'package:permission_handler/permission_handler.dart';

class ImageController extends GetxController {
  RxString imagePath = "".obs;

  // Future<void> openCamera() async {
  //   // Request camera permission
  //   final status = await Permission.camera.request();

  //   if (status.isGranted) {
  //     try {
  //       final picker = ImagePicker();
  //       final image = await picker.pickImage(
  //         source: ImageSource.camera,
  //         maxHeight: 300,
  //       );

  //       if (image != null) {
  //         imagePath.value = image.path;
  //       }
  //     } catch (e) {
  //       Get.snackbar("Error", "Failed to open camera: $e");
  //     }
  //   } else if (status.isPermanentlyDenied) {
  //     Get.snackbar("Permission Required",
  //         "Camera permission is permanently denied. Please enable it in settings.");
  //     await openAppSettings();
  //   } else {
  //     Get.snackbar("Permission Required", "Camera permission is needed.");
  //   }
  // }
}
