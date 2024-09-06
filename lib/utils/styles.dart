import 'package:flutter/material.dart';

BoxDecoration engineStyle(context) => BoxDecoration(
      borderRadius: const BorderRadius.horizontal(
          left: Radius.circular(20), right: Radius.zero),
      color: Theme.of(context).primaryColorDark,
    );

BoxDecoration departments(context) => BoxDecoration(
      borderRadius: BorderRadius.circular(20),
      color: Theme.of(context).primaryColorDark,
      // boxShadow: const [
      //   // BoxShadow(
      //   //   color: Color.fromARGB(185, 255, 255, 255),
      //   //   blurRadius: 12,
      //   //   // spreadRadius: .0,
      //   // )
      // ],
    );

////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////

InputDecoration textFormFieldStyle(label , readOnly) => InputDecoration(

      border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10), gapPadding: 4),
      filled: true,
      fillColor: readOnly?const Color.fromARGB(255, 119, 118, 116) : Colors.white,
      contentPadding: const EdgeInsets.all(10),
      isDense: true,
      hintText: label,
      
    );

RelativeRect rect = RelativeRect.fromSize(recta, Size.infinite);

Rect recta = const Rect.fromLTRB(80, 60, 60, 60);

/////////////////////////////////////////////////////////////////

TextStyle namesOfPages(bool isSelected) => TextStyle(
      fontSize: 20,
      color: isSelected ? Colors.white : Colors.white60,
    );
