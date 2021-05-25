import 'package:get/get.dart';
import 'package:izigo/models/services_model.dart';

class ServicesController extends GetxController{
  List<ServicesModel> Slist = [
    ServicesModel(
      title: 'Accomodation',
      img: "assets/icons/building.png",

    ),
    ServicesModel(
      title: 'Sleeping at home ',
      img: "assets/icons/hotel.png",
    ),
    ServicesModel(
      title: 'Organized Stay',
      img: "assets/icons/childCart.png",
    ),
    ServicesModel(
      title: 'Holiday colony',
      img: "assets/icons/umbrella.png",
    ),

  ];

}