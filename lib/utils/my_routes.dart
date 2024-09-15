import '../presentaion/views/depart_view.dart';
import '../presentaion/views/home_view.dart';
import '../presentaion/views/main_view.dart';
import 'package:flutter/material.dart';

Map<String, WidgetBuilder> myRoutes = {
  MainView.id: (context) => const MainView(),
  HomeView.id: (context) => const HomeView(),
  DepartView.id: (conext) => const DepartView(),
};
