import 'package:flutter/material.dart';

List<PopupMenuEntry<int>> list = const [
  PopupMenuItem(
    
    value: 0,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(
          "إضافة محرك جديد",
          style: TextStyle(color: Colors.blue),
        ),
        Icon(
          Icons.add,
          color: Colors.blue,
        ),
      ],
    ),
  ),
  PopupMenuItem(
    value: 1,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(
          "حذف كل المحركات",
          style: TextStyle(color: Colors.red),
        ),
        Icon(
          Icons.delete_forever,
          color: Colors.red,
        ),
      ],
    ),
  ),
];
