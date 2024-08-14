import 'package:bloc_learn/presentaion/views/depart_view.dart';
import 'package:bloc_learn/presentaion/views/home_view.dart';
import 'package:bloc_learn/presentaion/widget/Main_view_Widgets/departs_in_main_view.dart';
import 'package:bloc_learn/utils/widgets/main_view_container_custom.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class MainView extends StatelessWidget {
  const MainView({super.key});
  static const id = "main_view";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: MainViewContainerCustom(
          child: Column(
            children: [
              //* الجزء الخاص بالقسم
              Expanded(
                child: DepartsInMainView(
                    title: "داخل القسم",
                    color: const Color.fromARGB(255, 115, 161, 196),
                    onTap: () {
                      Navigator.pushNamed(context, DepartView.id);
                    }),
              ),
              const Gap(30),
              //* كل المحركات
              Expanded(
                child: DepartsInMainView(
                  title: "كل المحركات",
                  color: Colors.blue,
                  onTap: () {
                    Navigator.pushNamed(context, HomeView.id);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
