const knameBox = "engines";

const String addOperation = "Add Engine";
const String editOperation = "Edit Engine";

const String all = "all";
const String refurbished = "ref";
const String nonRefurbished = "non_ref";
const String department = "depart";
const String engineID = "engineID";
const String logDate = "logDate";
const String logOutDate = "logOutDate";
const String washStage = "washStage";
const String crankStage = "crankStage";
const String collectStage = "collectStage";
const String cylinderStage = "cylinderStage";
const String sprayStage = "sprayStage";
const String testStage = "testStage";

const String state = "state";

const int lang = 1;

const Map<String, List<String>> langDef = {
  all: ["All", "الكل"],
  refurbished: ["refurbished", "ص.أ"],
  nonRefurbished: ["non Refurbished", "ص.ع"],
  engineID: ["Engine id", "رقم المحرك"],
  logDate: ["Login Date", "تاريخ الدخول"],
  logOutDate: ["Logout Date", "تاريخ الخروج"],
  washStage: ["Wash Date", "فك وغسيل"],
  crankStage: ["", "كرانكات"],
  collectStage: ["", "تجميع"],
  cylinderStage: ["", "وش سلندر"],
  sprayStage: ["", "رشاشات"],
  testStage: ["", "اختبار"],

  state : ["State" , "الحالة"],
};
