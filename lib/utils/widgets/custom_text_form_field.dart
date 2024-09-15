import '../styles.dart';
import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.controller,
    this.hintText = "",
    required this.readOnly,
    this.onChanged,
    this.txtKey, this.validator,
  });
  final TextEditingController controller;
  final String hintText;
  final bool readOnly;
  final void Function(String)? onChanged;
  final Key? txtKey;
  final String? Function(String?)? validator;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: TextFormField(
        controller: controller,
        readOnly: readOnly,
        decoration: textFormFieldStyle(hintText, readOnly),
        onChanged: onChanged,
        validator: validator,
        key: txtKey,
      ),
    );
  }
}
