import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:izigo/models/accomodation_Model.dart';
import 'package:like_button/like_button.dart';

class AccomodationController extends GetxController
{
  List <AccomodationModel> listofhotels=
  [
    AccomodationModel(
      img:"assets/images/hotel.png",
        title: "1234 Broadway Avenue",
      descrption: "Fabulous three bed entire house",
      address: "New York, United States",
      distance: "3.4",
      icon: LikeButton(
        size: 14,
        countBuilder: (int count,bool isLiked,String text){
          var Color = isLiked ? Colors.pinkAccent : Colors.grey;
        },

        onTap: onLikedButtonTapped,
      ),
      rate: "\$161",TRating: "4.9",TReviews: "1123",
    ),

    AccomodationModel(
      img:"assets/images/hotel.png",
        title: "Guest houses",
      descrption: "Fabulous three bed entire house",
      address: "New York, United States",
      distance: "3.7",
      icon: LikeButton(
        size: 14,
        countBuilder: (int count,bool isLiked,String text){
          var Color = isLiked ? Colors.pinkAccent : Colors.grey;
        },

        onTap: onLikedButtonTapped,
      ),
      rate: "\$170",TRating: "4.9",TReviews: "233",
    )
  ];

  List<AccomodationModel> accomodation = [

    AccomodationModel(
      img: "assets/images/hotels.png",
      title: "Hotels"
    ),
    AccomodationModel(
      img: "assets/images/guesthouses.png",
      title: "Guest Houses"
    ),
    AccomodationModel(
      img: "assets/images/furnished.png",
      title: "Furnished Accomodation"
    ),
  ];

}
Future<bool> onLikedButtonTapped(bool isLiked) async {
  return !isLiked;
}