import 'dart:io';

import 'package:bloc_learn/cubits/DisplayEngineDetail/display_engine_detail_cubit.dart';
import 'package:bloc_learn/cubits/DisplayEngineList/display_engine_list_cubit.dart';
import 'package:bloc_learn/cubits/EditEngine/edit_engine_cubit.dart';
import 'package:bloc_learn/cubits/simple_observer.dart';
import 'package:bloc_learn/models/engine_model.dart';
import 'package:bloc_learn/models/engine_model_adapter.dart';
import 'package:bloc_learn/presentaion/views/main_view.dart';
import 'package:bloc_learn/utils/constants.dart';
import 'package:bloc_learn/utils/my_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:path_provider/path_provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  Bloc.observer = SimpleObserver();
  Directory dir = await getApplicationDocumentsDirectory();
  Hive.registerAdapter(EngineModelAdapter());
  await Hive.openBox<EngineModel>(knameBox, path: dir.path);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => DisplayEngineListCubit(),
        ),
        BlocProvider(
          create: (context) => EditEngineCubit(),
        ),
        BlocProvider(
          create: (context) => DisplayEngineDetailCubit(),
        ),
      ],
      child: MaterialApp(
        routes: myRoutes,
        home: const MainView(),
      ),
    );
  }
}
