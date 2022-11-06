import 'package:flutter/material.dart';
import 'package:iot_app_cusat/values/fonts.dart';

class InputField extends StatefulWidget {
  var hint;

  InputField({super.key, required this.hint});

  @override
  State<InputField> createState() => _InputFieldState();
}

class _InputFieldState extends State<InputField> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      child: TextFormField(
        decoration: InputDecoration(
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(25)),
            hintText: widget.hint,
            hintStyle: FontValues.hintStyle),
      ),
    );
  }
}
