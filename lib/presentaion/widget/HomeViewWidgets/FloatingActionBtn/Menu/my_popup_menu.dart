import 'package:flutter/material.dart';
import 'list.dart';
import 'on_selected_in_top.dart';

myPopupMenu(context, int indexPage) {
  return PopupMenuButton(
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        topRight: Radius.circular(20),
        bottomLeft: Radius.circular(20),
        bottomRight: Radius.circular(20),
      ),
    ),
    
    offset: const Offset(30, 15),
    icon: const Icon(Icons.menu),
    onSelected: (int value) {
      onSelectedInTop(value, context, indexPage );
    },
    itemBuilder: (context) {
      return list;
    },
  );
}

