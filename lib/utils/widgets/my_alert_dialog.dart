import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MyAlertDialog extends StatelessWidget {
  const MyAlertDialog({
    super.key,
    required this.title,
    required this.content,
    required this.btnName,
    this.btnName2 = "",
    required this.onPressed,
    required this.onPressed2,
    required this.showbtn2,
  });
  final String title, content, btnName, btnName2;
  final void Function() onPressed;
  final void Function() onPressed2;
  final bool showbtn2; 
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(title),
      content: Text(content),
      actions: [
        ElevatedButton(onPressed: onPressed, child: Text(btnName)),
        if (showbtn2) ElevatedButton(onPressed: onPressed2, child: Text(btnName2))
      ]
    );
  }
}
