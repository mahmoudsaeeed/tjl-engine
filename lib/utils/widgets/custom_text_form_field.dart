import 'package:bloc_learn/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.controller,
    this.hintText = "",
    this.readOnly = false,
  });
  final TextEditingController controller;
  final String hintText;
  final bool readOnly;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: TextFormField(
        controller: controller,
        readOnly: readOnly,
        decoration: textFormFieldStyle(hintText),
      ),
    );
  }
}
