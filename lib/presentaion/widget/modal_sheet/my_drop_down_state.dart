import 'package:bloc_learn/utils/constants.dart';
import 'package:flutter/material.dart';

class MyDropDownState extends StatefulWidget {
  const MyDropDownState({super.key, required this.controller});
  final TextEditingController controller;
  @override
  State<MyDropDownState> createState() => _MyDropDownStateState();
}

class _MyDropDownStateState extends State<MyDropDownState> {
  int myChoise = 0;
  @override
  Widget build(BuildContext context) {
    return DropdownMenu(
      controller: widget.controller,
      dropdownMenuEntries: items,
      onSelected: (newValue) {
        setState(() {
          myChoise = newValue!;
          debugPrint("${items[myChoise]}");
        });
      },
      initialSelection: myChoise,
    );
  }
}

List<DropdownMenuEntry<int>> items = const [
  DropdownMenuEntry(
    value: 0,
    label: refurbished,

  ),
  DropdownMenuEntry(
    value: 1,
    label: nonRefurbished,
  ),
  DropdownMenuEntry(
    value: 2,
    label: department,
  ),
  DropdownMenuEntry(
    value: 3,
    label: mog,
  ),
  DropdownMenuEntry(
    value: 4,
    label: std,
  ),
];
