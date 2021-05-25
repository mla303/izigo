import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:izigo/controllers/show_hide_controller.dart';
import 'package:izigo/views/widgets/appBar.dart';
import 'package:izigo/views/widgets/colors.dart';
import 'package:izigo/views/widgets/custom_button.dart';
import 'package:izigo/views/widgets/custom_text_field.dart';
import 'package:izigo/views/widgets/social_button.dart';



class ForgetPasswordPage extends StatelessWidget {
  TextEditingController email = TextEditingController();
  TextEditingController pass = TextEditingController();


  bool _obscureText = true;
  // void _toggle(){
  //   setState((){
  //     _obscureText = !_obscureText;
  //   });
  // }
  ShowHideController controller = Get.put(ShowHideController());

  @override
  Widget build(BuildContext context) {
    final primaryColor = Theme.of(context).primaryColor;
    final textstyle = Theme.of(context).textTheme;

    return SafeArea(
      child: Scaffold(
        appBar: myappBar(
          centerTitle: true,
          title: "",
          height: 50,
          action: SizedBox(),
          leading: Icon(Icons.arrow_back,color: mainColor1,)
        ),
        body: SingleChildScrollView(
          child: Container(
            width: Get.width,
            padding: EdgeInsets.symmetric(horizontal: 22,vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: Get.height/20,
                ),
                Image.asset("assets/images/logo.png",scale: 1.6,),
                Text('Reset Password',
                style: textstyle.bodyText1,),

                Text('We\'ll email you a link to reset your password.',
                style: textstyle.bodyText2,),


                SizedBox(
                  height: Get.height/35,
                ),
                Text('Email'),
                CustomTextField(
                  enable: false,
                  obscuretext: false,
                  txtController: email,
                  hintText2: 'enter email address',
                ),



                SizedBox(
                  height: Get.height/40,
                ),
                CustomButton(
                    lable: 'Reset ',
                    lableColor: Colors.white,
                    onPress: () {
                      Get.offNamed("/BottomNavBar");
                    },
                    color: primaryColor,

                    radius: 12,
                    borderColor: primaryColor),
                SizedBox(
                  height: Get.height/60,
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
