import 'package:bloc_learn/utils/controllers.dart';
import 'package:bloc_learn/utils/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class AddEngineModalShape extends StatelessWidget {
  const AddEngineModalShape({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey,
      child: Column(
        children: [
          CustomTextFormField(controller: id_controller),
          const Gap(10),
          CustomTextFormField(controller: state_controller),
          // CustomTextFormField(controller: id_controller),

          ElevatedButton(onPressed: (){
            //TODO here we will use cubit of add engine
          },  child: const Text("Add Engine"),),
        ],
      ),
    );
  }
}