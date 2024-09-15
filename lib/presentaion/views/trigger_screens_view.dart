// import 'package:tjl/cubits/DisplayEngine/display_engine_cubit.dart';
import 'package:flutter/material.dart';
import 'package:tjl/presentaion/views/Screens/HomeScreen/all_screen.dart';
import 'package:tjl/presentaion/views/Screens/HomeScreen/non_ref_screen.dart';
import 'package:tjl/presentaion/views/Screens/HomeScreen/ref_screen.dart';
import 'package:tjl/presentaion/widget/Trigger_Screens_View_Widgets/tabs.dart';
import 'package:tjl/utils/styles.dart';
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
    _tabController = TabController(length: tabs.length, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        toolbarHeight: 50,
        bottom: TabBar(
          tabs: tabs,
          controller: _tabController,
          labelStyle: namesOfPages(true),
          unselectedLabelStyle: namesOfPages(false),
          indicatorColor: Colors.white,
          indicatorWeight: 6,
        ),
      ),
      body: TabBarView(
        physics: const NeverScrollableScrollPhysics(),
        controller: _tabController,
        children: const [
          AllScreen(),
          NonRefScreen(),
          RefScreen(),
        ],
      ),
    );
  }
}


