import 'package:get/get.dart';
import 'package:izigo/models/filter_organized_stay_model.dart';

class OrganizedStayController extends GetxController {

  // RxDouble currentSliderValue = 50.0.obs; // adding .obs makes variable obserable

  bool isSelected = false;

  List <OrganizedStayModel> datalist = [
    OrganizedStayModel(
      title: "Hotels",
    ),
    OrganizedStayModel(
      title: "Guest House"
    ),
    OrganizedStayModel(
      title: "Furnished accommodation"
    ),
    
  ];


  List<String> todoTemp = [];
  changeStatus(String todo, bool condition) {
    if (condition) {
      todoTemp.add(todo);
    } else {
      todoTemp.remove(todo);
    }
    print(todoTemp.length);
    update();
  }
}
