import 'package:flutter/material.dart';
import 'package:timelines/timelines.dart';

class EngineOperation extends StatelessWidget {
  const EngineOperation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Container(
          // color: Colors.red,
          child: const Column(
            children: [
              MyTimeLineTile(
                isFinished: true,
                content: "فك وغسيل",
                isFirst: true,
              ),
              MyTimeLineTile(
                isFinished: true,
                content: " كرانكات",
              ),
              MyTimeLineTile(
                isFinished: false,
                content: " تجميع",
              ),
              MyTimeLineTile(
                isFinished: false,
                content: " وش سلندر",
              ),
              MyTimeLineTile(
                isFinished: false,
                content: " رشاشات",
              ),
              MyTimeLineTile(
                isFinished: false,
                content: " اختبار",
                isLast: true,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MyTimeLineTile extends StatelessWidget {
  const MyTimeLineTile({
    super.key,
    this.isFirst = false,
    this.isLast = false,
    this.isFinished = false,
    required this.content,
  });

  final bool isFirst, isLast, isFinished;
  final String content;
  @override
  Widget build(BuildContext context) {
    return TimelineTile(
      node: TimelineNode(
        startConnector: isFirst
            ? null
            : SizedBox(
                height: 20,
                child: SolidLineConnector(
                  color: isFinished ? Colors.blue : Colors.black,
                  space: 40,
                  thickness: 3,
                ),
              ),
        endConnector: isLast
            ? null
            : SizedBox(
                height: 20,
                child: SolidLineConnector(
                  color: isFinished ? Colors.blue : Colors.black,
                  space: 40,
                  thickness: 3,
                ),
              ),
        indicator: DotIndicator(
          color: isFinished ? Colors.blue : Colors.black,
          child: isFinished ? const Icon(Icons.check) : null,
          size: 24,
        ),
        // overlap:true ,
        position: 0,
        direction: Axis.vertical,
      ),
      contents: Container(
        width: 100,
        height: 40,
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10), color: isFinished ?Colors.blue : Colors.grey),
        alignment: Alignment.center,
        child: Text(content),
      ),
      // mainAxisExtent: ,
      // crossAxisExtent: ,
      // direction: ,
      // nodeAlign: ,
      // nodePosition: ,
      // oppositeContents: ,
      // key: ,
    );
  }
}
