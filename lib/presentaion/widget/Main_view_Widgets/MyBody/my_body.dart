import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import '../../../views/depart_view.dart';
import '../../../views/home_view.dart';
import 'body_container.dart';
import 'departs_in_main_view.dart';

class MyBody extends StatelessWidget {
  const MyBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BodyContainer(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          DepartsInMainView(
            title: "محركات داخل القسم",
            onTap: () {
              Navigator.pushNamed(context, DepartView.id);
            },
          ),
          const Gap(80),
          DepartsInMainView(
            title: "كل المحركات",
            onTap: () {
              Navigator.pushNamed(context, HomeView.id);
            },
          ),
        ],
      ),
    );
  }
}