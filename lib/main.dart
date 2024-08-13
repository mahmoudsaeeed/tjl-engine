import 'package:bloc_learn/presentaion/views/home_view.dart';
import 'package:bloc_learn/utils/my_routes.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      routes: myRoutes,
      home: HomeView(),
    );
  }
}
