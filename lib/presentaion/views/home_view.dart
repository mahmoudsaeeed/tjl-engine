import 'package:bloc_learn/presentaion/views/trigger_screens_view.dart';
import 'package:bloc_learn/presentaion/widget/FloatingButton/MyPopup/floating_action_btn.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  static const String id = "home_view";
  @override
  Widget build(BuildContext context) {
    return const Directionality(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        floatingActionButton: FloatingActionBtn(
          indexPage: 0,
        ), //TODO  we want to provide currPage provider
        floatingActionButtonLocation: FloatingActionButtonLocation.endTop,
        body: TriggerScreensView(),
      ),
    );
  }
}
