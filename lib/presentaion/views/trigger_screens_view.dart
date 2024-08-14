// import 'package:bloc_learn/cubits/DisplayEngine/display_engine_cubit.dart';
import 'package:bloc_learn/presentaion/views/Screens/all_screen.dart';
import 'package:bloc_learn/presentaion/views/Screens/non_ref_screen.dart';
import 'package:bloc_learn/presentaion/views/Screens/ref_screen.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';

class TriggerScreensView extends StatefulWidget {
  const TriggerScreensView({super.key});

  @override
  State<TriggerScreensView> createState() => _TriggerScreensViewState();
}

class _TriggerScreensViewState extends State<TriggerScreensView>
    with SingleTickerProviderStateMixin {

  late TabController _tabController;
  @override
  void initState() {
    _tabController = TabController(length: _tabs.length, vsync: this);

    //*/* this provider is execute one time when just open the app
    //*/* it reloads data at first time
    // BlocProvider.of<DisplayEngineCubit>(context)
    //     .fetchAllData(_tabController.index);

    // _tabController.addListener(
    //   () {
    //     if (_tabController.indexIsChanging) {
    //       debugPrint("current index = ${_tabController.index}");
    //       BlocProvider.of<DisplayEngineCubit>(context)
    //           .fetchAllData(_tabController.index);
    //     }
        // else {
        //   debugPrint("current index = ${_tabController.index}");
        //   debugPrint("current offest = ${_tabController.offset}");
        //   debugPrint("animation = ${_tabController.animationDuration}");
        //   debugPrint("${_tabController.indexIsChanging}");
        // }

        //TODO here we will propaplly use it
      // },
    // );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        bottom: TabBar(
          tabs: _tabs,
          controller: _tabController,
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: const[
          AllScreen(),
          NonRefScreen(),
          RefScreen(),
        ],
      ),
    );
  }
}

const List<Widget> _tabs = [
  Tab(
    text: "all",
  ),
  Tab(
    text: "nonRefurbished",
  ),
  Tab(
    text: "refurbished",
  ),
];

// List<Widget> _screens = const [
//   AllScreen(),
//   RefScreen(),
//   NonRefScreen(),
// ];
