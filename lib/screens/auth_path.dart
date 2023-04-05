import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:local_auth/error_codes.dart';
import'package:local_auth/local_auth.dart';

class AuthPath extends StatefulWidget {
  const AuthPath({super.key});

  @override
  _AuthPathState createState() => _AuthPathState();

}
class _AuthPathState extends State<AuthPath> {
  static Future<bool> authenticateUser() async {
    //initialize Local Authentication plugin.
    final LocalAuthentication _localAuthentication = LocalAuthentication();

    //status of authentication.
    bool isAuthenticated = false;

    //check if device supports biometrics authentication.
    bool isBiometricSupported = await _localAuthentication.isDeviceSupported();


    List<BiometricType> biometricTypes =
    await _localAuthentication.getAvailableBiometrics();

    print(biometricTypes);

    //if device supports biometrics, then authenticate.
    if (isBiometricSupported) {
      try {
        isAuthenticated = await _localAuthentication.authenticate(

            localizedReason: 'Please authenticate to show account balance',
            options: const AuthenticationOptions(
                biometricOnly: true, useErrorDialogs: true, stickyAuth: true));
      } on PlatformException catch (e) {
        print(e);
      }
    }

    return isAuthenticated;
  }


  @override
  Widget build(BuildContext context) {
    var isAuthenticated;
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('Fingerprint Auth',
            style: TextStyle(
                fontSize: 38),
          ),
          const SizedBox(
              height: 38
          ),
          Container(
              padding: const EdgeInsets.only(left: 18, right: 18),
              height: 78,
              width: MediaQuery
                  .of(context)
                  .size
                  .width,
              child: ElevatedButton(
                  child: const Text('check'),
                  onPressed: () =>
                     {isAuthenticated                  },
                  style: ElevatedButton.styleFrom(
                      shape: const StadiumBorder(),
                      primary: Colors.purpleAccent))),
        ],
      ),
    );
  }
}
