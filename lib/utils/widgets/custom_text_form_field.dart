import 'package:bloc_learn/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({super.key, required this.controller});
  final TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: TextFormField(
        controller: controller,
        decoration: textFormFieldStyle("رقم المحرك"),
        
      ),
    );
  }
}
