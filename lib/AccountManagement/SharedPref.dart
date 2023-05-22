import 'package:shared_preferences/shared_preferences.dart';

class SharedPref {

  // keys
  static String UserEmail = "ThisIsTheUserEmailKey";
  static String UserPassword = "ThisIsTheUserPassword";
  static String FirstName = "ThisIsTheFirstName";
  static String LastName = "ThisIsTheLastName";
  static String EmailAddress = "ThisIsTheEmailAddress";
  static String MobileNumber = "ThisIsTheMobileNumber";
  static String CarBrand = "ThisIsTheCarBrand";
  static String CarModel = "ThisIsTheCarModel";
  static String CarColor = "ThisIsTheCarColor";
  static String RegNumber = "ThisIsTheRegNumber";

  // setter
  static setter (String target, String data) async {
    SharedPreferences sf = await SharedPreferences.getInstance();
    return await sf.setString(target, data);
  }

  // getter
  static Future<String?> getter (String target) async {
    SharedPreferences sf = await SharedPreferences.getInstance();
    return await sf.getString(target);
  }

  // clear
  static clear () async {
    SharedPreferences sf = await SharedPreferences.getInstance();
    sf.clear();
  }
}