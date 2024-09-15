import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class MyNumberEngine extends StatelessWidget {
  const MyNumberEngine({
    super.key,
    required this.title,
    required this.value,
  });
  final String title;
  final int value;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColorDark,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "$title : ",
            style: const TextStyle(color: Colors.white),
          ), //* عدد المحركات الرئيسي
          const Gap(10),
          Text(
            "$value",
            style: const TextStyle(color: Colors.white),
          ),
        ],
      ),
    );
  }
}