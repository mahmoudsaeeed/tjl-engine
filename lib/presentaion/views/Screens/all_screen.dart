import 'package:bloc_learn/cubits/DisplayEngine/display_engine_cubit.dart';
import 'package:bloc_learn/models/engine_model.dart';
import 'package:bloc_learn/presentaion/widget/EngineListViewWidgets/engine_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AllScreen extends StatefulWidget {
  const AllScreen({
    super.key,
    // required this.pageIndex,
  });
  // final int pageIndex;

  @override
  State<AllScreen> createState() => _AllScreenState();
}

class _AllScreenState extends State<AllScreen> {
  @override
  void initState() {
    BlocProvider.of<DisplayEngineCubit>(context).fetchAllData(0);
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
