import 'package:get/get.dart';

class ShowHideController extends GetxController{

  RxBool obscureText = true.obs;

  void toggle() => obscureText.value != obscureText.value ? true : false;

}