import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class MyDataRow extends StatelessWidget {
  const MyDataRow({
    super.key,
    required this.value,
    required this.fieldText,
  });
  final String value;
  // final TextEditingController txtFieldController;
  final String fieldText;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200,
      child: Row(
        children: [
          Container(
              margin: const EdgeInsets.symmetric(vertical: 10),
              width: 90,
              // color: Colors.amber,
              child: Text(
                fieldText,
                style: Theme.of(context).textTheme.titleMedium,
              )),
          const Gap(10),
          Container(
              margin: const EdgeInsets.symmetric(vertical: 10),
              // color: Colors.amber,
              child: Text(
                value,
                style: Theme.of(context).textTheme.displayMedium,
              )),
          // CustomTextFormField(
          //   controller: txtFieldController,
          //   readOnly: true,
          // )
        ],
      ),
    );
  }
}
