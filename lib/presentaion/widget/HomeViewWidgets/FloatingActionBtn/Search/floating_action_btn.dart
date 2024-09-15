import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../Menu/my_popup_menu.dart';
import 'search_icon.dart';

class FloatingActionBtn extends StatelessWidget {
  const FloatingActionBtn({super.key, required this.indexPage});
  final int indexPage;
  @override
  Widget build(BuildContext context) {
    // final curr = BlocProvider.of<DisplayEngineListCubit>(context);
    

    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        searchIcon(context),
        const Gap(40),
        myPopupMenu(context, indexPage),
      ],
    );
  }
}




