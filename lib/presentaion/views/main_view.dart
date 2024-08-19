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
      body: Stack(
        children: [
          MainViewContainerCustom(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //* الجزء الخاص بالقسم
                // const Gap(100),
                SizedBox(
                  height: 80,
                  child: DepartsInMainView(
                      title: "محركات داخل القسم",
                      onTap: () {
                        Navigator.pushNamed(context, DepartView.id);
                      }),
                ),
                const Gap(80),
                //* كل المحركات
                SizedBox(
                  height: 80,
                  child: DepartsInMainView(
                    title: "كل المحركات",
                    onTap: () {
                      Navigator.pushNamed(context, HomeView.id);
                    },
                  ),
                ),
                // const Gap(80),
              ],
            ),
          ),
          Container(
            height: 90,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                color: Theme.of(context).appBarTheme.backgroundColor,
                borderRadius:
                    const BorderRadius.vertical(bottom: Radius.circular(30))),
            alignment: Alignment.center,
            child: const Text(
              "TJL APP",
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.w800,
                shadows: [
                  Shadow(color: Colors.white, offset: Offset(1, 1),
),
                  Shadow(
                      color: Color.fromARGB(255, 185, 146, 110),
                      offset: Offset(3, 1)),
                  Shadow(
                      color: Color.fromARGB(255, 185, 146, 110),
                      offset: Offset(-3, 1)),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
