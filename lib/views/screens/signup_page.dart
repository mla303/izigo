import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:izigo/controllers/show_hide_controller.dart';
import 'package:izigo/views/screens/signin_page.dart';
import 'package:izigo/views/widgets/colors.dart';
import 'package:izigo/views/widgets/custom_button.dart';
import 'package:izigo/views/widgets/custom_text_field.dart';
import 'package:izigo/views/widgets/social_button.dart';



class SignUpPage extends StatelessWidget {
  TextEditingController email = TextEditingController();
  TextEditingController pass = TextEditingController();



  ShowHideController controller = Get.put(ShowHideController());

  @override
  Widget build(BuildContext context) {
    final primaryColor = Theme.of(context).primaryColor;
    final textstyle = Theme.of(context).textTheme;

    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            width: Get.width,
            // height: Get.height,
            padding: EdgeInsets.symmetric(horizontal: 22,vertical: 5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: Get.height/20,
                ),
                Image.asset("assets/images/logo.png",scale: 1.6,),
                Text('Join the IZIGO Community',
                style: textstyle.bodyText1,),
                SizedBox(
                  height: Get.height/35,
                ),
                Text('Name'),
                CustomTextField(
                  enable: false,
                  obscuretext: false,
                  txtController: email,
                  hintText2: 'enter your name',
                ), Text('Email'),
                CustomTextField(
                  enable: false,
                  obscuretext: false,
                  txtController: email,
                  hintText2: 'enter email address',
                ),
                Text('Password'),
                CustomTextField(
                  enable: false,
                  obscuretext: controller.obscureText.value,
                  iconButton: IconButton(
                    icon: Icon(Icons.remove_red_eye),
                    iconSize: 18,
                    color: Colors.grey,

                    onPressed:()
                    {
                      controller.toggle();
                    }


                  ),
                  txtController: pass,
                  hintText2: 'enter password',
                ),
                Text('Confirm Password'),
                CustomTextField(
                  enable: false,
                  obscuretext: controller.obscureText.value,
                  iconButton: IconButton(
                    icon: Icon(Icons.remove_red_eye),
                    iconSize: 18,
                    color: Colors.grey,

                    onPressed:()
                    {
                      controller.toggle();
                    }


                  ),
                  txtController: pass,
                  hintText2: 'reEnter password',
                ),


                SizedBox(
                  height: Get.height/40,
                ),
                CustomButton(
                    lable: 'Signup ',
                    lableColor: Colors.white,
                    onPress: () {
                      Get.offNamed("/SignInPage");
                    },
                    color: primaryColor,

                    radius: 12,
                    borderColor: primaryColor),
                SizedBox(
                  height: Get.height/45,
                ),



                Center(
                  child: RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                    children: [
                        TextSpan(
                            text: 'By creating an account, you agree to our',
                            style: TextStyle(color: Colors.black)),
                        TextSpan(
                            text: '\n Terms of Service ',
                            style: TextStyle(color: mainColor2, height: 1.5,fontWeight: FontWeight.bold),),
                      TextSpan(
                          text: 'and ',
                          style: TextStyle(color: Colors.black)),
                      TextSpan(
                        text: 'Privacy Policy',
                        style: TextStyle(color: mainColor2, height: 1.5,fontWeight: FontWeight.bold),),
                      ])),
                ),
                SizedBox(
                  height: 25,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

