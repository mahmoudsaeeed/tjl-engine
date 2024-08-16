import 'package:bloc_learn/cubits/DisplayEngineList/display_engine_list_cubit.dart';
import 'package:bloc_learn/models/engine_model.dart';
import 'package:bloc_learn/presentaion/widget/EngineListViewWidgets/engine_list_view.dart';
import 'package:bloc_learn/utils/constants.dart';
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
    BlocProvider.of<DisplayEngineListCubit>(context).fetchAllData(0);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DisplayEngineListCubit, List<EngineModel>>(
      builder: (context, currList) {
        return EngineListView(currList: currList, pageName: all,);

        // return EngineListView(currList:);
      },
    );
  }
}
