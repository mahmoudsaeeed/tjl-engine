import 'package:bloc_learn/cubits/DisplayEngine/display_engine_cubit.dart';
import 'package:bloc_learn/models/engine_model.dart';
import 'package:bloc_learn/presentaion/widget/EngineListViewWidgets/engine_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NonRefScreen extends StatefulWidget {
  const NonRefScreen({super.key});
  // final int pageIndex;

  @override
  State<NonRefScreen> createState() => _NonRefScreenState();
}

class _NonRefScreenState extends State<NonRefScreen> {
  @override
  void initState() {
    BlocProvider.of<DisplayEngineCubit>(context).fetchAllData(1);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DisplayEngineCubit, List<EngineModel>>(
      builder: (context, currList) {
        return EngineListView(currList: currList);
      },
    );
  }
}
