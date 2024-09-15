import '../../cubits/DisplayEngineList/display_engine_list_cubit.dart';
import '../../models/engine_model.dart';
import '../widget/EngineListViewWidgets/engine_list_view.dart';
import '../../utils/constants.dart';
import '../widget/HomeViewWidgets/FloatingActionBtn/Search/custom_search.dart';
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
    BlocProvider.of<DisplayEngineListCubit>(context).fetchAllData(3);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Directionality(
      child: Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
                onPressed: () {
                  showSearch(
                    context: context,
                    delegate: CustomSearch(
                        pageNumber: 3,
                        currList:
                            BlocProvider.of<DisplayEngineListCubit>(context)
                                .currList!),
                  );
                },
                icon: const Icon(Icons.search))
          ],
        ),
        body: BlocBuilder<DisplayEngineListCubit, List<EngineModel>>(
          builder: (context, currList) {
            return EngineListView(
              //*  3 depart
              currList: currList, pageNumber: pageIndexIn[department]!,
            );
          },
        ),
      ),
    );
  }
}
