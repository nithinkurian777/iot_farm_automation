import 'package:flutter/material.dart';
import 'package:iot_app_cusat/values/colors.dart';
import 'package:iot_app_cusat/values/fonts.dart';

class RectButton extends StatefulWidget {
  final route;
  final text;
  const RectButton({super.key, required this.route, required this.text});

  @override
  State<RectButton> createState() => _RectButtonState();
}

class _RectButtonState extends State<RectButton> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: SizedBox(
        height: 50,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              backgroundColor: ColorValues.primaryColor),
          onPressed: () {
            Navigator.pushNamed(context, widget.route);
          },
          child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text(
              widget.text,
              style: FontValues.buttonText,
            )
          ]),
        ),
      ),
    );
  }
}
