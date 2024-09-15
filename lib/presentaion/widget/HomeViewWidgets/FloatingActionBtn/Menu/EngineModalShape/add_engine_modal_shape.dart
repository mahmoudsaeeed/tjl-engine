import '../../../../../../cubits/AddEngine/add_engine_cubit.dart';
import '../../../../../../cubits/DisplayEngineList/display_engine_list_cubit.dart';
import 'my_drop_down_state.dart';
import '../../../../../../utils/constants.dart';
import '../../../../../../utils/controllers.dart';
import '../../../../../../utils/widgets/custom_text_form_field.dart';
import '../../../../../../utils/widgets/AlertDialog/my_alert_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';

class EngineModalShape extends StatelessWidget {
  const EngineModalShape({super.key, required this.operate});
  // final int indexPage;

  final String? operate;
  @override
  Widget build(BuildContext context) {
    GlobalKey<FormState> formkey = GlobalKey();
    return Container(
      color: const Color.fromARGB(255, 3, 25, 26),
      padding: EdgeInsets.only(
          bottom: MediaQuery.of(context).viewInsets.bottom + 40,
          left: 20,
          right: 20),
      child: SingleChildScrollView(
        child: GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
            FocusScope.of(context).nextFocus();
          },
          child: Form(
            key: formkey,
            child: Column(
              children: [
                const Gap(20),
                CustomTextFormField(
                  controller: idController,
                  hintText: "رقم المحرك",
                  readOnly: false,
                  validator: (value) {
                    if (value!.isNotEmpty) {
                      if (int.parse(value).isNaN) {
                        return "أدخل رقم المحرك باللغة الانجليزية من فضلك";
                      }
                    } else {
                      return "مطلوب";
                    }
                    return "";
                  },
                  onChanged: (value) {
                    if (int.parse(value).isNaN) {
                      if (formkey.currentState!.validate()) {
                        debugPrint("Ok");
                      }else {
                        debugPrint("not impossible");
                      }
                    }
                  },
                ),
                CustomTextFormField(
                  controller: unitController,
                  hintText: "رقم الوحدة",
                  readOnly: false,
                ),
                const Gap(10),
                MyDropDownState(controller: stateController),
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
                                  content: "انا بفضل الله ضيفتلك محرك جديد",
                                  btnName: "خلصانه ",
                                  onPressed: () {
                                    // Navigator.pushNamedAndRemoveUntil(
                                    //     context, MainView.id, (route) => false);
                                    BlocProvider.of<DisplayEngineListCubit>(
                                            context)
                                        .fetchAllData(0); //TODO
                                    //TODO fetchAllDate is referch current page but i don't have currPagèe index
                                    Navigator.pop(context);
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
        ),
      ),
    );
  }
}
