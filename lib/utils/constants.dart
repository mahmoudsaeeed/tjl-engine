import 'package:bloc_learn/utils/controllers.dart';
import 'package:flutter/material.dart';

const knameBox = "engine";

const String addOperation = "Add Engine";
const String editOperation = "Edit Engine";

const String all = "all";
const String refurbished = "ref";
const String nonRefurbished = "non_ref";
const String department = "depart";
const String std = "standard";
const String mog = "mogarad";
const String engineID = "engineID";
const String logDate = "logDate";
const String logOutDate = "logOutDate";
const String washStage = "washStage";
const String crankStage = "crankStage";
const String collectStage = "collectStage";
const String cylinderStage = "cylinderStage";
const String sprayStage = "sprayStage";
const String testStage = "testStage";
const String unit = "unit";

const String state = "state";

const int lang = 1;

const Map<String, List<String>> langDef = {
  all: ["All", "الكل"],
  refurbished: ["refurbished", "ص.أ"],
  nonRefurbished: ["non Refurbished", "ص.ع"],
  engineID: ["Engine id", "رقم المحرك"],
  state: ["State", "الحالة"],
  unit: ["Unit", "الوحدة"],
  logDate: ["Login Date", "تاريخ الدخول"],
  logOutDate: ["Logout Date", "تاريخ الخروج"],
  washStage: ["Wash Date", "فك وغسيل"],
  crankStage: ["", "كرانكات"],
  collectStage: ["", "تجميع"],
  cylinderStage: ["", "وش سلندر"],
  sprayStage: ["", "رشاشات"],
  testStage: ["", "اختبار"],
  std :["Standard" , "قياسي"],
  mog : ["mogarad" , "مجرد"],
};

//* مستخدمين في صفحة
//* engine_detail

final List<String> operationsName = [
  langDef[washStage]![lang],
  langDef[crankStage]![lang],
  langDef[collectStage]![lang],
  langDef[cylinderStage]![lang],
  langDef[sprayStage]![lang],
  langDef[testStage]![lang],
];

//* fieldsName , editController , infoEditingState  used in my_data_row_in_modify_engine
final List<String> fieldsName = [
  langDef[engineID]![lang],
  langDef[state]![lang],
  langDef[logDate]![lang],
  langDef[logOutDate]![lang],
  langDef[washStage]![lang],
  langDef[crankStage]![lang],
  langDef[collectStage]![lang],
  langDef[cylinderStage]![lang],
  langDef[sprayStage]![lang],
  langDef[testStage]![lang],
  langDef[unit]![lang],
];
final List<TextEditingController> editControllers = [
  idEditController,
  stateEditController,
  logDateEditController,
  logOutDateEditController,
  washEditController,
  crankEditController,
  collectEditController,
  cylinderEditController,
  sprayEditController,
  testEditController,
  unitEditController,
];

List infoEditingState = [
  false, //* id
  false, //* state
  false, //* logDate
  false, //* logOutDate
  false, //* wash
  false, //* crank
  false, //* collect
  false, //* cylinder
  false, //* spray
  false, //* test
  false,
];

class MyAlertDialogText {
  MyAlertDialogText(
    this.operation,
    this.id,
  );
  final String operation;
  final int id;

  String operationTitle() {
    return "تأكيد عملية ال$operation";
  }

  String operationConfirmContent() {
    return "هل تريد $operation المحرك $id ؟ ";
  }

  String operationSuccessContent() {
    return "تمت عملية $operation المحرك بنجاح  يرجي الانتقال للصفحة الرئيسية";
  }

  String backToMain = "يرجي الانتقال للصفحة الرئيسية";
}

Map<String, int> pageIndexIn = {
  all: 0,
  nonRefurbished: 1,
  refurbished: 2,
  department: 3
};
