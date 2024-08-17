import 'package:flutter/material.dart';

BoxDecoration engineStyle = BoxDecoration(
  borderRadius:
      BorderRadius.horizontal(left: Radius.circular(20), right: Radius.zero),
  color: Colors.blueGrey,
);

BoxDecoration mainStyle(Color color) {
  return BoxDecoration(
    borderRadius: BorderRadius.circular(20),
    color: color,
  );
}

////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////

InputDecoration textFormFieldStyle(label) => InputDecoration(
    border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10), gapPadding: 4),
    filled: true,
    fillColor: Color.fromARGB(255, 56, 55, 54),
    contentPadding: const EdgeInsets.all(10),
    isDense: true,
    hintText: label);

RelativeRect rect = RelativeRect.fromSize(recta, Size.infinite);

Rect recta = Rect.fromLTRB(80, 60, 60, 60);
