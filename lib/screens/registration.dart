import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:iot_app_cusat/values/colors.dart';
import 'package:iot_app_cusat/values/fonts.dart';
import 'package:iot_app_cusat/widgets/button.dart';
import 'package:iot_app_cusat/widgets/input_field.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({super.key});

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
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
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 15),
              child: Text(
                'Welcome to IoT',
                style: FontValues.subHead1,
              ),
            ),
            const Text(
              'How do you manage your IoT Devices?',
              style: FontValues.mainContent,
            ),
            const Text(
              'If don\'t know start from here',
              style: FontValues.mainContent,
            ),
            InputField(hint: 'Enter your Fullname'),
            InputField(hint: 'Enter your Email'),
            InputField(hint: 'Enter your Password'),
            InputField(hint: 'Confirm Password'),
            InputField(hint: 'Your Location'),
            const RectButton(route: '/register', text: 'Register'),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Already have an account? ',
                    style: FontValues.mainContent,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, '/login');
                    },
                    child: const Text(
                      ' Sign in',
                      style: FontValues.linkStyle,
                    ),
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
