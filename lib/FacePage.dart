//
// import 'package:apppliaction_with_amal/Create.dart';
// import 'package:flutter/material.dart';
// import 'package:local_auth/local_auth.dart';
// import 'package:flutter/services.dart';
// import 'local_auth_api.dart';
// import 'main.dart';
//
// class FacePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) => Scaffold(
//     appBar: AppBar(
//
//       centerTitle: true,
//     ),
//     body: Padding(
//       padding: EdgeInsets.all(32),
//       child: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             buildHeader(),
//             SizedBox(height: 32),
//             buildAvailability(context),
//             SizedBox(height: 24),
//             buildAuthenticate(context),
//           ],
//         ),
//       ),
//     ),
//   );
//
//   Widget buildAvailability(BuildContext context) => buildButton(
//     Text: 'Check Availability',
//     icon: Icons.event_available,
//     onClicked: () async {
//       final isAvailable = await LocalAuthApi.hasBiometrics();
//
//       showDialog(
//         context: context,
//         builder: (context) => AlertDialog(
//           title: Text('Availability'),
//           content: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             mainAxisSize: MainAxisSize.min,
//             children: [
//               const SizedBox(height: 16),
//               buildText('Biometrics', isAvailable),
//             ],
//           ),
//           actions: [
//             ElevatedButton(
//               onPressed: () => Navigator.of(context).pop(),
//               child: Text('Ok'),
//             )
//           ],
//         ),
//       );
//     },
//   );
//
//   Widget buildText(String text, bool checked) => Container(
//     margin: EdgeInsets.symmetric(vertical: 8),
//     child: Row(
//       children: [
//         checked
//             ? Icon(Icons.check, color: Colors.green, size: 24)
//             : Icon(Icons.close, color: Colors.red, size: 24),
//         const SizedBox(width: 12),
//         Text(text, style: TextStyle(fontSize: 24)),
//       ],
//     ),
//   );
//
//
//
//
//   Widget buildHeader() => Column(
//     children: [
//       Text(
//         'Face ID Auth',
//         style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
//         textAlign: TextAlign.center,
//       ),
//       SizedBox(height: 16),
//       ShaderMask(
//         shaderCallback: (bounds) {
//           final colors = [Colors.blueAccent, Colors.pink];
//
//           return RadialGradient(colors: colors).createShader(bounds);
//         },
//         child: Icon(Icons.face_retouching_natural,
//             size: 100, color: Colors.white),
//       ),
//     ],
//   );
// }