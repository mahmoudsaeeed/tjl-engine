import 'package:flutter/material.dart';
import '../widget/Main_view_Widgets/MyBody/my_body.dart';
import '../widget/Main_view_Widgets/MyTitle/my_title.dart';

class MainView extends StatelessWidget {
  const MainView({super.key});
  static const id = "main_view";
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Stack(
        children: [
          MyBody(),
          MyTitle(),
        ],
      ),
    );
  }
}
