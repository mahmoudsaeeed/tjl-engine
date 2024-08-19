import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MainViewContainerCustom extends StatelessWidget {
  const MainViewContainerCustom({super.key, required this.child});

  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(40),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      color: Theme.of(context).primaryColor,
      child: child,
    );
  }
}
