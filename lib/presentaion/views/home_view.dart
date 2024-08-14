import 'package:bloc_learn/cubits/DisplayEngine/display_engine_cubit.dart';
import 'package:bloc_learn/presentaion/views/trigger_screens_view.dart';
import 'package:bloc_learn/presentaion/widget/FloatingButton/MyPopup/floating_action_btn.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      // lazy: false,
      create: (context) => DisplayEngineCubit(),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        floatingActionButton: const FloatingActionBtn(indexPage: 0,),  //TODO  we want to provide currPage provider
        floatingActionButtonLocation: FloatingActionButtonLocation.startTop,
        body: Container(
          color: Colors.black45,
          child: const TriggerScreensView(),
        ),
      ),
    );
  }
}
