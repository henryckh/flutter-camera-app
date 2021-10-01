import 'package:flutter/material.dart';
import 'package:camera/camera.dart';
import 'package:henryckh/screens/camera.toolbar.dart';

class CameraApp extends StatefulWidget {
  CameraApp(this.camera);
  final List<CameraDescription> camera;

  @override
  _CameraAppState createState() => _CameraAppState(camera);
}

class _CameraAppState extends State<CameraApp> {
  CameraController controller;
  final List<CameraDescription> cameras;

  _CameraAppState(this.cameras);

  @override
  void initState() {
    super.initState();
    controller = CameraController(cameras[0], ResolutionPreset.max);
    controller.initialize().then((_) {
      if (!mounted) {
        return;
      }
      setState(() {});
    });
  }

  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (!controller.value.isInitialized) {
      return Container();
    }
    return MaterialApp(
        home: Center(
            child: Stack(
      children: [CameraPreview(controller), Toolbar()],
    )));
  }
}
