import 'dart:io';

import 'package:bloc_learn/cubits/DisplayEngineDetail/display_engine_detail_cubit.dart';
import 'package:bloc_learn/cubits/DisplayEngineList/display_engine_list_cubit.dart';
import 'package:bloc_learn/cubits/EditEngine/edit_engine_cubit.dart';
import 'package:bloc_learn/cubits/changeOperation/change_operation_cubit.dart';
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
        BlocProvider(create: (context) => ChangeOperationCubit()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: myRoutes,
        theme: lightTheme,
        home: const MainView(),
      ),
    );
  }
}

ThemeData lightTheme = ThemeData(
  useMaterial3: true,

////////////////////////////////////////////////////////
  ///! Colors
  scaffoldBackgroundColor: const Color(0xff222831),

  // appBarTheme: const AppBarTheme(color: Color(0xff00ADB5)),
  appBarTheme: AppBarTheme(color: Colors.orange[900]),
  //* background of background
  primaryColor: const Color(0xff393E46),

//*  background of containers
  primaryColorDark: const Color(0xff222831),

  // dialogTheme: ,
  // dialogBackgroundColor: ,

  // buttonTheme: ButtonThemeData(
  //   padding: EdgeInsets.symmetric(horizontal: 20),

  // ) ,

/////////////////////////////////////////////////
  fontFamily: "Cairo",

  ///! Fonts
  textTheme: const TextTheme(
    //* texts within MainView Page
    headlineLarge: TextStyle(
      fontWeight: FontWeight.bold,
      color: Colors.white,
      fontFamily: "Cairo",
    ),

    //* Titles of AlertDialog
    titleLarge: TextStyle(
      fontSize: 20,
      color: Colors.white,
      fontWeight: FontWeight.bold,
    ),

    //* EngineTitels
    titleMedium: TextStyle(
      fontSize: 14,
      color: Colors.white,
      fontWeight: FontWeight.bold,
    ),

    //* OperationName
    titleSmall: TextStyle(
      fontSize: 12,
    ),

    //* engineData
    displayMedium: TextStyle(
      fontSize: 14,
      color: Colors.white70,
    ),
  ),

  // primaryColor: Colors.red,
);
