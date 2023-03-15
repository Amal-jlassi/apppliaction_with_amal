/*
import 'package:flutter/material.dart';
// import 'package:local_auth/local_auth.dart';
//
// class FaceIdScreen extends StatefulWidget {
//   @override
//   _FaceIdScreenState createState() => _FaceIdScreenState();
// }
//
// class _FaceIdScreenState extends State<FaceIdScreen> {
//   final LocalAuthentication _localAuthentication = LocalAuthentication();
//   bool _isFingerPrintSupported = false;
//   bool _isAuthenticated = false;
//
//   @override
//   void initState() {
//     super.initState();
//     _checkBiometricSupport();
//   }
//
//   Future<void> _checkBiometricSupport() async {
//     bool isDeviceSupported = await _localAuthentication.isDeviceSupported();
//     bool canCheckBiometrics = await _localAuthentication.canCheckBiometrics;
//     List<BiometricType> availableBiometrics =
//     await _localAuthentication.getAvailableBiometrics();

    setState(() {
      _isFingerPrintSupported = isDeviceSupported &&
          canCheckBiometrics &&
          availableBiometrics.contains(BiometricType.face);
    });
  }

  Future<void> _authenticate() async {
    bool isAuthenticated = false;
    try {
      isAuthenticated = await _localAuthentication.authenticate(
        localizedReason: 'Please authenticate to access the app',

        useErrorDialogs: true,
        stickyAuth: true,
        biometricOnly: true,
        androidAuthStrings: AndroidAuthMessages(
          cancelButton: 'Cancel',
          signInTitle: 'Face ID Authentication',
          fingerprintHint: 'Touch the sensor',
          fingerprintNotRecognized: 'Face not recognized',
          fingerprintSuccess: 'Face recognized',
          fingerprintError: 'Authentication failed',
        ),
        iOSAuthStrings: IOSAuthMessages(
          lockOut: 'Face ID Authentication Failed',
          goToSettingsButton: 'Settings',
          goToSettingsDescription: 'Please set up your Face ID in Settings',
        ),
      );
    } catch (e) {
      print(e);
    }

    if (isAuthenticated) {
      setState(() {
        _isAuthenticated = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Face ID Authentication'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              Icons.face,
              size: 100,
            ),
            SizedBox(height: 16),
            Text(
              'Authenticate using Face ID',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 16),
            RaisedButton(
              onPressed: _isFingerPrintSupported ? _authenticate : null,
              child: Text('Authenticate'),
            ),
            SizedBox(height: 16),
            if (_isAuthenticated)
              Text(
                'Authenticated',
                style: TextStyle(fontSize: 20, color: Colors.green),
              ),
          ],
        ),
      ),
    );
  }
}*/
