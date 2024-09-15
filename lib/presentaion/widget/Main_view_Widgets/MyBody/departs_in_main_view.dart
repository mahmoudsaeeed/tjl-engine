import '../../../../utils/styles.dart';
import 'package:flutter/material.dart';

class DepartsInMainView extends StatelessWidget {
  const DepartsInMainView(
      {super.key, required this.title, required this.onTap});

  final String title;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          alignment: Alignment.center,
          decoration: departments(context),
          child: Text(
            title,
            style: Theme.of(context).textTheme.headlineLarge,
          ),
        ),
      ),
    );
  }
}
