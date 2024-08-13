import 'dart:io';

import 'package:bloc_learn/models/engine_model_adapter.dart';
import 'package:bloc_learn/presentaion/views/home_view.dart';
import 'package:bloc_learn/utils/constants.dart';
import 'package:bloc_learn/utils/my_routes.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:path_provider/path_provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  Directory dir = await getApplicationDocumentsDirectory();
  Hive.registerAdapter(EngineModelAdapter());

  await Hive.openBox(knameBox, path: dir.path);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const Directionality(
      child: MaterialApp(
        routes: myRoutes,
        home: HomeView(),
      ),
    );
  }
}
