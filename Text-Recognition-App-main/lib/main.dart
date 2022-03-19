import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:text_recognition/providers/provider_setup.dart';
import 'package:text_recognition/view/home_page.dart';
import 'package:camera/camera.dart';
import 'package:flutter_camera_ml_vision/flutter_camera_ml_vision.dart';
import 'camera.dart';



void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

// void _initializeCamera() async {
//   CameraController _camera;
//   final CameraDescription description =
//   await ScannerUtils.getCamera(_direction);
//
//   _camera = CameraController(
//     description,
//     ResolutionPreset.high,
//   );
//
//   await _camera.initialize();
//
//   _camera.startImageStream((CameraImage image) {
//
//     // Here we will scan the text from the image
//     // which we are getting from the camera.
//
//   });
//
// }
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: providers,
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          // theme: ThemeData(
          //   primarySwatch: Colors.blue,
          // ),
          theme: ThemeData.dark(),
          darkTheme: ThemeData.dark(),
          home: const HomePage()),
    );
  }
}
