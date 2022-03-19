// import 'package:camera/camera.dart';
// import 'camera.dart';
//
// bool _isDetecting = false;
//
// VisionText _textScanResults;
//
// CameraLensDirection _direction = CameraLensDirection.back;
//
// CameraController _camera;
//
// final TextRecognizer _textRecognizer =
// FirebaseVision.instance.textRecognizer();
//
// @override
// void initState() {
//   super.initState();
//   _initializeCamera();
// }
//
// void _initializeCamera() async {
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
//     if (_isDetecting) return;
//
//     setState(() {
//       _isDetecting = true;
//     });
//     ScannerUtils.detect(
//       image: image,
//       detectInImage: _getDetectionMethod(),
//       imageRotation: description.sensorOrientation,
//     ).then(
//           (results) {
//         setState(() {
//           if (results != null) {
//             setState(() {
//               _textScanResults = results;
//             });
//           }
//         });
//       },
//     ).whenComplete(() => _isDetecting = false);
//   });
// }
//
//
// Future<VisionText> Function(FirebaseVisionImage image) _getDetectionMethod() {
//   return _textRecognizer.processImage;
// }