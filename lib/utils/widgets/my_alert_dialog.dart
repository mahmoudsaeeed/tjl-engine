import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MyAlertDialog extends StatelessWidget {
  const MyAlertDialog({
    super.key,
    required this.title,
    required this.content, 
    required this.onPressed, required this.btnName,
    
  });
  final String title, content , btnName ;
  final void Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(title),
      content: Text(content),
      actions: [
        ElevatedButton(onPressed: onPressed, child: Text(btnName)),
      ],
    );
  }
}
