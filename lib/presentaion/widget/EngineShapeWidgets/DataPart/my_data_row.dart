import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class MyDataRow extends StatelessWidget {
  const MyDataRow({super.key, required this.data, required this.value});

  final String data, value;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
            width: 80,
            child: Text(
              data,
              style: Theme.of(context).textTheme.titleMedium,
            )),
        const Gap(10),
        Text(
          value,
          style: Theme.of(context).textTheme.displayMedium,
        ),
      ],
    );
  }
}
