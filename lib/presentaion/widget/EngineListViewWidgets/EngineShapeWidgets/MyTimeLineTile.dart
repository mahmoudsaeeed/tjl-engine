import '../../../../cubits/DisplayEngineList/display_engine_list_cubit.dart';
import '../../../../cubits/changeOperation/change_operation_cubit.dart';
import '../../../../utils/widgets/AlertDialog/my_alert_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:timeline_tile/timeline_tile.dart';

class MyTimeLineTile extends StatelessWidget {
  static const String id = "my_timeline";

  const MyTimeLineTile({
    super.key,
    this.isFirst = false,
    this.isLast = false,
    this.isFinished = false,
    required this.content,
    required this.operationNumber,
    required this.indexCurrEngineInBox,
  });

  final bool isFirst, isLast, isFinished;
  final String content;
  final int operationNumber;
  final int indexCurrEngineInBox;

  @override
  Widget build(BuildContext context) {
    return TimelineTile(
      axis: TimelineAxis.horizontal,
      alignment: TimelineAlign.start,
      isFirst: isLast,
      isLast: isFirst,
      hasIndicator: true,
      indicatorStyle: IndicatorStyle(
        drawGap: true,
        width: 50,

        color: isFinished
            ? Theme.of(context).appBarTheme.backgroundColor!
            : Colors.grey,
        iconStyle: isFinished
            ? IconStyle(
                iconData: Icons.check,
              )
            : null,
        // width: 70,
        height: 20,
      ),
      beforeLineStyle: LineStyle(
        color: isFinished
            ? Theme.of(context).appBarTheme.backgroundColor!
            : Colors.grey,
      ),
      afterLineStyle: LineStyle(
        color: isFinished
            ? Theme.of(context).appBarTheme.backgroundColor!
            : Colors.grey,
      ),
      endChild: GestureDetector(
        onTap: () {
          showDialog(
            context: context,
            builder: (context) => MyAlertDialog(
              title: "تأكيد العملية",
              content: "هل تريد حقا تغيير حالة العملية؟",
              onPressed: () {
                BlocProvider.of<ChangeOperationCubit>(context)
                    .changeState(operationNumber, indexCurrEngineInBox);
                BlocProvider.of<DisplayEngineListCubit>(context)
                    .fetchAllData(3);
                Navigator.pop(context);
                // });
              },
              onPressed2: () {
                Navigator.pop(context);
              },
              showbtn2: true,
            ),
          );
        },
        child: Container(
          // padding: EdgeInsets.all(10),
          margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 2),
          padding: const EdgeInsets.all(5),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: isFinished
                ? Theme.of(context).appBarTheme.backgroundColor
                : Colors.grey,
          ),
          alignment: Alignment.center,
          child: Text(content, style: Theme.of(context).textTheme.titleSmall),
        ),
      ),
    );
  }
}
