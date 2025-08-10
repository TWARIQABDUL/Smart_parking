import 'dart:io';
import 'package:flutter/material.dart';
import 'package:camera/camera.dart';
import 'package:get/get.dart';
import 'package:google_mlkit_text_recognition/google_mlkit_text_recognition.dart';

class CameraPage extends StatefulWidget {
  const CameraPage({super.key});

  @override
  State<CameraPage> createState() => _CameraPageState();
}

class _CameraPageState extends State<CameraPage> {
  CameraController? _controller;
  bool _isBusy = false;

  @override
  void initState() {
    super.initState();
    _initCamera();
  }

  Future<void> _initCamera() async {
    final cameras = await availableCameras();
    _controller = CameraController(
      cameras.first,
      ResolutionPreset.medium,
    );
    await _controller!.initialize();
    if (mounted) setState(() {});
  }

  Future<void> _takePictureAndRecognize() async {
    if (_controller == null || !_controller!.value.isInitialized) return;

    setState(() => _isBusy = true);

    final picture = await _controller!.takePicture();

    final textRecognizer = TextRecognizer(script: TextRecognitionScript.latin);
    
    final inputImage = InputImage.fromFile(File(picture.path));

    final RecognizedText recognizedText =
        await textRecognizer.processImage(inputImage);

    textRecognizer.close();

    String? plate;
    for (var block in recognizedText.blocks) {
      for (var line in block.lines) {
        if (RegExp(r'^[A-Z]{3}\s\d{3}\s?[A-Z]$').hasMatch(line.text)) {
          plate = line.text;
          break;
        }
      }
      if (plate != null) break;
    }

    setState(() => _isBusy = false);
    Get.back(result: plate ?? "No plate detected");
  }

  @override
  Widget build(BuildContext context) {
    if (_controller == null || !_controller!.value.isInitialized) {
      return const Scaffold(
        body: Center(child: CircularProgressIndicator()),
      );
    }

    return Scaffold(
      body: Stack(
        children: [
          CameraPreview(_controller!),
          
          Positioned(
            
            bottom: 40,
            left: 0,
            right: 0,
            child: Center(
              child: FloatingActionButton(
                backgroundColor: Colors.green,
                onPressed: _isBusy ? null : _takePictureAndRecognize,
                child: _isBusy
                    ? const CircularProgressIndicator(color: Colors.white)
                    : const Icon(Icons.camera),
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _controller?.dispose();
    super.dispose();
  }
}
