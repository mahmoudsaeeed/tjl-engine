import 'package:bloc_learn/cubits/AddEngine/add_engine_cubit.dart';
import 'package:bloc_learn/presentaion/views/main_view.dart';
import 'package:bloc_learn/presentaion/widget/modal_sheet/my_drop_down_state.dart';
import 'package:bloc_learn/utils/constants.dart';
import 'package:bloc_learn/utils/controllers.dart';
import 'package:bloc_learn/utils/widgets/custom_text_form_field.dart';
import 'package:bloc_learn/utils/widgets/my_alert_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';

class EngineModalShape extends StatelessWidget {
  const EngineModalShape({super.key, required this.operate});
  // final int indexPage;

  final String? operate;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey,
      padding: EdgeInsets.only(
          bottom: MediaQuery.of(context).viewInsets.bottom,
          left: 20,
          right: 20),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const Gap(20),
            CustomTextFormField(
              controller: idController,
              hintText: "رقم المحرك",
            ),
            const Gap(10),
            // CustomTextFormField(controller: stateController),
            MyDropDownState(controller: stateController),
            // CustomTextFormField(controller: idController),
            const Gap(100),

            ElevatedButton(
              onPressed: () {
                switch (operate) {
                  case addOperation:
                    {
                      BlocProvider.of<AddEngineCubit>(context).addEngine();
                      // BlocProvider.of<DisplayEngineListCubit>(context).fetchAllData(0);
                      showDialog(
                          context: context,
                          builder: (context) {
                            return MyAlertDialog(
                              title: "تمت الإضافة بنجاح",
                              content: "يرجي الرجوع للصفحة الرئيسية ",
                              btnName: "الرجوع للصفحة الرئيسية",
                              onPressed: () {
                                Navigator.pushNamedAndRemoveUntil(
                                    context, MainView.id, (route) => false);
                              },
                              onPressed2: () {},
                              showbtn2: false,
                            );
                          });
                      break;
                    }
                  case editOperation:
                    {
                      //TODO here codes of editing modal
                    }
                }
              },
              child: Text(operate!),
            ),
          ],
        ),
      ),
    );
  }
}
