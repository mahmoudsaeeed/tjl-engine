import '../../../../cubits/DisplayEngineList/display_engine_list_cubit.dart';
import '../../../../models/engine_model.dart';
import '../../../widget/EngineListViewWidgets/engine_list_view.dart';
import '../../../../utils/constants.dart';
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
    BlocProvider.of<DisplayEngineListCubit>(context).fetchAllData(1);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DisplayEngineListCubit, List<EngineModel>>(
      builder: (context, currList) {
        return EngineListView(
          currList: currList,
          pageNumber: pageIndexIn[nonRefurbished]!,
        );
      },
    );
  }
}
