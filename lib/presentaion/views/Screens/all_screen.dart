import 'package:bloc_learn/cubits/DisplayEngine/display_engine_cubit.dart';
import 'package:bloc_learn/models/engine_model.dart';
import 'package:bloc_learn/presentaion/widget/EngineListViewWidgets/engine_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AllScreen extends StatelessWidget {
  const AllScreen({super.key, required this.pageIndex});
  final int pageIndex;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DisplayEngineCubit, List<EngineModel>>(
      builder: (context, state) {
        // context.read<DisplayEngineCubit>().fetchAllData(pageIndex);
        return EngineListView(currList: state);
      },
    );
  }
}
