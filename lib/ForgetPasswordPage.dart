
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';





class ForgotPasswordPage extends StatefulWidget {
  const ForgotPasswordPage({Key? key}) : super(key: key);

  @override
  _ForgotPasswordPageState createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends State<ForgotPasswordPage> {
  final TextEditingController _emailController = TextEditingController();
  String? _errorMessage;

  void _resetPassword() {
    // TODO: Implement password reset logic here
    String email = _emailController.text;
    setState(() {
      _errorMessage = 'Password reset email sent to $email';
    });
  }

  @override
  void dispose() {
    _emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:Color(0xff4666FFF),
        title: Text('Forgot Password'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Enter your email address to reset your password',
              style: Theme.of(context).textTheme.headline6,
            ),
            SizedBox(height: 16),
            TextField(
              controller: _emailController,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                hintText: 'Email address',
                errorText: _errorMessage,
              ),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: _resetPassword,

              child: Text('Reset Password'),
              style: ElevatedButton.styleFrom(
                primary: Color(0xff4666FFF),

                padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
            ),
            ),
          ],
        ),
      ),
    );
  }
}



