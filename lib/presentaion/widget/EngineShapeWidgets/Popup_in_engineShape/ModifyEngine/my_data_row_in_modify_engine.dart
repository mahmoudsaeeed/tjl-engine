import 'package:bloc_learn/cubits/DisplayEngineList/display_engine_list_cubit.dart';
import 'package:bloc_learn/cubits/EditEngine/edit_engine_cubit.dart';
import 'package:bloc_learn/utils/constants.dart';
import 'package:bloc_learn/utils/def.dart';
import 'package:bloc_learn/utils/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyDataRowInModifyEngine extends StatefulWidget {
  const MyDataRowInModifyEngine({
    super.key,
    required this.indexField,
    required this.currPage,
    required this.engineIndexInBox,
  });
  final int indexField;
  final int currPage;
  final int engineIndexInBox;
  // final bool readOnly;
  @override
  State<MyDataRowInModifyEngine> createState() =>
      _MyDataRowInModifyEngineState();
}

class _MyDataRowInModifyEngineState extends State<MyDataRowInModifyEngine> {
  bool readOnly = true;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [

        //* title 
        Container(
            // alignment: Alignment.center,
            padding: EdgeInsets.only(right: 10),
            width: 100,
            child: Text(
              fieldsName[widget.indexField],
              style: Theme.of(context).textTheme.titleMedium,
            )),

        //* data
        Expanded(
          child: CustomTextFormField(
            readOnly: readOnly,
            controller: editControllers[widget.indexField],
            // initValue: widget.initValue,
          ),
        ),
        !infoEditingState[widget.indexField]
            ?
            //* edit btn
            IconButton(
                onPressed: () {
                  setState(() {
                    infoEditingState[widget.indexField] = true;
                    readOnly = false;
                  });
                },
                icon: const Icon(Icons.edit),
              )
            : Row(
                children: [
                  //* close btn
                  IconButton(
                      onPressed: () {
                        setState(() {
                          infoEditingState[widget.indexField] = false;
                          readOnly = true;
                        });
                        // BlocProvider.of<DisplayEngineListCubit>(context)
                        //     .fetchAllData(widget.currPage);
                      },
                      icon: const Icon(Icons.close)),

                  //* save btn
                  IconButton(
                      onPressed: () {
                        BlocProvider.of<EditEngineCubit>(context).editEngine(
                            box.getAt(widget.engineIndexInBox)!,
                            widget.indexField);
                        BlocProvider.of<DisplayEngineListCubit>(context)
                            .fetchAllData(widget.currPage);
                        setState(() {
                          infoEditingState[widget.indexField] = false;
                          readOnly = true;
                        });
                      },
                      icon: const Icon(Icons.save)),
                ],
              )
      ],
    );
  }
}
