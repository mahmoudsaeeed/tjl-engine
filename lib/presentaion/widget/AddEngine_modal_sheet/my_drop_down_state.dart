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
    label: "ref",
  ),
  DropdownMenuEntry(
    value: 1,
    label: "non_ref",
  ),
];
