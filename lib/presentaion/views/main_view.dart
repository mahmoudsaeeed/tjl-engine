import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MainView extends StatelessWidget {
  const MainView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child: Column(
          children: [
            //* الجزء الخاص بالقسم
            GestureDetector(
              onTap: () {
                
              },

              child: Container(
                color: Colors.amber,
                // decoration: departStyle(),
                child: const Text("محركات داخل القسم"),
              ),
            ),
            GestureDetector(
              onTap: () {
                
              },

              child: Container(
                color: Colors.amber,
                // decoration: departStyle(),
                child: const Text("محركات داخل القسم"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}