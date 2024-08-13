import 'package:bloc_learn/cubits/AddEngine/add_engine_cubit.dart';
import 'package:bloc_learn/utils/controllers.dart';
import 'package:bloc_learn/utils/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';

class AddEngineModalShape extends StatelessWidget {
  const AddEngineModalShape({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey,
      child: Column(
        children: [
          CustomTextFormField(controller: idController),
          const Gap(10),
          CustomTextFormField(controller: stateController),
          // CustomTextFormField(controller: idController),

          ElevatedButton(
            onPressed: () {

              

              BlocListener<AddEngineCubit, AddEngineState>(
                listener: (context, state) {
                  context.read<AddEngineCubit>().addEngine(); //* Engine exit in cubit

                  if (state is AddEngineSuccess) {
                    showDialog(
                        context: context, builder: (context) => Container()); 
                        //TODO 
                  }
                },
                child: Container(),
              );

              //TODO here we will use cubit of add engine
            },
            child: const Text("Add Engine"),
          ),
        ],
      ),
    );
  }
}
