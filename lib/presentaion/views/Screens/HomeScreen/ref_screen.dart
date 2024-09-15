import '../../../../cubits/DisplayEngineList/display_engine_list_cubit.dart';
import '../../../../models/engine_model.dart';
import '../../../widget/EngineListViewWidgets/engine_list_view.dart';
import '../../../../utils/constants.dart';
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
    BlocProvider.of<DisplayEngineListCubit>(context).fetchAllData(2);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DisplayEngineListCubit, List<EngineModel>>(
      builder: (context, currList) {
        return EngineListView(
          currList: currList,
          pageNumber: pageIndexIn[refurbished]!,
        );

        // return EngineListView(currList:);
      },
    );
  }
}
