import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:henryckh/screens/home.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // Obtain a list of the available cameras on the device.
  final cameras = await availableCameras();
  runApp(
      MaterialApp(debugShowCheckedModeBanner: false, home: HomePage(cameras)));
}
