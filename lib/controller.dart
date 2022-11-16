import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class Controller extends GetxController {
  // variable which changes its value
  RxInt ans = 0.obs;
  TextEditingController t1 = TextEditingController();
  TextEditingController t2 = TextEditingController();

  void sum(String one, String two) {
    int x = int.parse(one);
    int y = int.parse(two);
    //varname.value --- to assign value
    ans.value=x + y;
  }
}
