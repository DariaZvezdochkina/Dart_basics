import 'package:test_project/src/lcm_gcd.dart';
import 'package:test_project/src/map_collection.dart';
import 'package:test_project/src/num_collection.dart';
import 'package:test_project/src/point.dart';
import 'package:test_project/src/system_conversion.dart';
import 'package:test_project/src/unique_num.dart';
import 'package:test_project/src/root_calculation.dart';
import 'package:test_project/src/user.dart';

void main(List<String> arguments) {
  print(calculateGCD(10, 5));
  print(calculateGCD2(29, 3));
  print(calculateLCM(4, 9));

  convertFromDecimalToBinary(159);
  convertFromDecimalToBinary2(159);
  convertFromBinaryToDecimal(1000);

  returnNumCollection('line123 ididthis32487');
  print(correlateTheWordAndOccurences());
  print(returnUniqueNum());
  print(returnUniqueNum());

  Point point = Point(1, 2, 3);
  print(point.distanceTo(Point(5, 6, 5)));
  print(8.nthRoot(3));

  AdminUser adminUser = AdminUser("email@mail.ru");
  GeneralUser generalUserA = GeneralUser("anna@icloud.com");
  GeneralUser generalUserB = GeneralUser("dima@gmail.com");
  UserManager userManager = UserManager();
  userManager.addUser(adminUser);
  userManager.addUser(generalUserA);
  userManager.addUser(generalUserB);
  userManager.deleteUser(generalUserA);
  print(userManager.showEmails());
}
