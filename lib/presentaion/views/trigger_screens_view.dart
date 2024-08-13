import 'package:bloc_learn/presentaion/views/Screens/all_screen.dart';
import 'package:bloc_learn/presentaion/views/Screens/non_ref_screen.dart';
import 'package:bloc_learn/presentaion/views/Screens/ref_screen.dart';
import 'package:flutter/material.dart';

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

    _tabController.addListener(() {
      //TODO here we will propaplly use it
    },);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        bottom: TabBar(
          tabs: _tabs,
          controller: _tabController,
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: _screens,
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

List<Widget> _screens = const [
  AllScreen(),
  RefScreen(),
  NonRefScreen(),
];
