import 'package:bloc_learn/presentaion/widget/Main_view_Widgets/departs_in_main_view.dart';
import 'package:bloc_learn/utils/widgets/main_view_container_custom.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class MainView extends StatelessWidget {
  const MainView({super.key});

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
                    onTap: () {}),
              ),
              const Gap(30),
              Expanded(
                child: DepartsInMainView(
                  title: "كل المحركات",
                  color: Colors.blue,
                  onTap: () {},
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
