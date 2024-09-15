import 'package:flutter/material.dart';
import 'custom_container.dart';
import '../../../../utils/styles.dart';

class MyTitle extends StatelessWidget {
  const MyTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      child:  Text(
        "TJL APP",
        style: mainTitleApp()
      ),
    );
  }
}