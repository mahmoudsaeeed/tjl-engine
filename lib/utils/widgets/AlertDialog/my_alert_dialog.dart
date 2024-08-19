import 'package:flutter/material.dart';

class MyAlertDialog extends StatelessWidget {
  const MyAlertDialog({
    super.key,
    required this.title,
    required this.content,
    this.btnName = "نعم",
    this.btnName2 = "لا",
    required this.onPressed,
    required this.onPressed2,
    required this.showbtn2,
  });
  final String title, content, btnName, btnName2;
  final void Function() onPressed;
  final void Function() onPressed2;
  final bool showbtn2;
  @override
  Widget build(BuildContext context) {
    return Directionality(
      child: AlertDialog(
        backgroundColor: Theme.of(context).primaryColorDark,
        title: Text(
          title,
          style: Theme.of(context).textTheme.titleLarge,
        ),
        content: Text(
          content,
          style: Theme.of(context).textTheme.titleMedium,
        ),
        actions: [
          if (showbtn2)
            ElevatedButton(
                onPressed: onPressed2,
                style: ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(Colors.red)),
                child: Text(
                  btnName2,
                  style: TextStyle(color: Colors.white),
                )),
          ElevatedButton(
              style: const ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(Colors.green)),
              onPressed: onPressed,
              child: Text(
                btnName,
                style: const TextStyle(color: Colors.white),
              )),
        ],
      ),
    );
  }
}
