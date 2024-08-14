
import 'package:bloc_learn/utils/styles.dart';
import 'package:flutter/widgets.dart';

class DepartsInMainView extends StatelessWidget {
  const DepartsInMainView(
      {super.key,
      required this.title,
      required this.color,
      required this.onTap});

  final String title;
  final Color color;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        decoration: mainStyle(color),
        child: Text(title),
      ),
    );
  }
}