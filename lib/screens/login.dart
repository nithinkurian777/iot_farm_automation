import 'package:flutter/material.dart';
import 'package:iot_app_cusat/values/colors.dart';
import 'package:iot_app_cusat/values/fonts.dart';
import 'package:iot_app_cusat/widgets/button.dart';
import 'package:iot_app_cusat/widgets/input_field.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorValues.bgColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [Image.asset('assets/images/top_circle.png')],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Image.asset(
                'assets/images/login_image.png',
                height: 200,
              ),
            ),
            InputField(hint: 'Enter your email'),
            InputField(hint: 'Enter your password'),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: InkWell(
                onTap: () {
                  Navigator.pushNamed(context, '/forgot');
                },
                child: const Text(
                  'Forgot Password',
                  style: FontValues.linkStyle,
                ),
              ),
            ),
            const RectButton(route: '/home', text: 'Login'),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text('Don\'t have an account? '),
                  Text(
                    'Sign up',
                    style: FontValues.linkStyle,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
