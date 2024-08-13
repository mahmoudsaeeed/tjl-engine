import 'package:flutter/material.dart';

BoxDecoration engineStyle = BoxDecoration(
  borderRadius: BorderRadius.circular(20),
  color: Colors.blueGrey,
);

InputDecoration textFormFieldStyle = InputDecoration(
  border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10), gapPadding: 4),
  filled: true,
  fillColor: Colors.amber,
  contentPadding: const EdgeInsets.all(0),
  isDense: true,
);

RelativeRect rect = RelativeRect.fromSize(recta, Size.infinite);

Rect recta = Rect.fromLTRB(80, 60, 60, 60);
