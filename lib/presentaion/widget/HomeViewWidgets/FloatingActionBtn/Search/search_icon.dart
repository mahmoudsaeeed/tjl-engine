import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tjl/cubits/DisplayEngineList/display_engine_list_cubit.dart';
import 'package:tjl/presentaion/widget/HomeViewWidgets/FloatingActionBtn/Search/custom_search.dart';

IconButton searchIcon(context) {
      return IconButton(
        onPressed: () {
          showSearch(
            context: context,
            delegate: CustomSearch(
              // currList: box.values.toList(),
              currList:
                  BlocProvider.of<DisplayEngineListCubit>(context).currList!,
              pageNumber: 0,
            ),
          );
        },
        icon: const Icon(Icons.search),
      );
    }