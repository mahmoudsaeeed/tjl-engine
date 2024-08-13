import 'package:bloc_learn/presentaion/views/trigger_screens_view.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        color: Colors.black45,
        child: const TriggerScreensView(),
      ),
    );
  }
}