import 'package:bloc_learn/cubits/DisplayEngine/display_engine_cubit.dart';
import 'package:bloc_learn/models/engine_model.dart';
import 'package:bloc_learn/presentaion/widget/EngineListViewWidgets/engine_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RefScreen extends StatefulWidget {
  const RefScreen({super.key});
  // final pageIndex;

  @override
  State<RefScreen> createState() => _RefScreenState();
}

class _RefScreenState extends State<RefScreen> {
  @override
  void initState() {
    BlocProvider.of<DisplayEngineCubit>(context).fetchAllData(2);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DisplayEngineCubit, List<EngineModel>>(
      builder: (context, currList) {
        return EngineListView(currList: currList);

        // return EngineListView(currList:);
      },
    );
  }
}
