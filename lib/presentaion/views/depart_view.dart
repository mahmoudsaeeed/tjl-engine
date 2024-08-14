import 'package:bloc_learn/cubits/DisplayEngine/display_engine_cubit.dart';
import 'package:bloc_learn/models/engine_model.dart';
import 'package:bloc_learn/presentaion/widget/EngineListViewWidgets/engine_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DepartView extends StatefulWidget {
  const DepartView({super.key});
  static const id = "depart";
  @override
  State<DepartView> createState() => _DepartViewState();
}

class _DepartViewState extends State<DepartView> {
  @override
  void initState() {
    BlocProvider.of<DisplayEngineCubit>(context).fetchAllData(3);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: BlocBuilder<DisplayEngineCubit, List<EngineModel>>(
        builder: (context, currList) {
          return EngineListView(
            currList: currList,
          );
        },
      ),
    );
  }
}
