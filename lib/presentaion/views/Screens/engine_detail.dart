// import 'package:tjl/utils/controllers.dart';
// import 'package:tjl/utils/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../models/engine_model.dart';
import '../../../utils/constants.dart';
import '../../widget/EngineDetailViewWidgets/edit_engine_btn.dart';
import '../../widget/EngineDetailViewWidgets/main_engine_detail.dart';
import '../../widget/EngineDetailViewWidgets/operation_engine_detail.dart';

class EngineDetail extends StatelessWidget {
  const EngineDetail(
      {super.key, required this.currEngine, required this.currPage});
  static const String id = "engine_detail";

  final EngineModel currEngine;
  final int currPage;
  @override
  Widget build(BuildContext context) {
    List<List<String>> data = [
      [
        currEngine.id.toString(),
        currEngine.state,
        currEngine.unit,
        currEngine.logDate,
        currEngine.logOutDate,
      ],
      [
        langDef[engineID]![lang],
        langDef[state]![lang],
        langDef[unit]![lang],
        langDef[logDate]![lang],
        langDef[logOutDate]![lang],
      ]
    ];

    //* صفحة عرض تفاصيل المحرك

    return Directionality(
      child: Scaffold(
        appBar: AppBar(),
        body: SingleChildScrollView(
          child: SizedBox(
            // color: Colors.green,
            height: MediaQuery.sizeOf(context).height,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                MainEngineDetail(data: data),
                const Divider(
                  indent: 100,
                  endIndent: 80,
                  thickness: 2,
                ),
                OperationEngineDetail(
                  currEngine: currEngine,
                ),
                const Gap(50),
                editEngineBtn(context, currEngine, currPage),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

