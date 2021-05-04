import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:izigo/controllers/onBoarding_controllerr.dart';
import 'package:izigo/views/widgets/custom_button.dart';
import 'package:izigo/views/widgets/sliderItems.dart';


class onBoardingpage extends StatelessWidget {

  final controller = Get.put(onBoardingController());
  @override
  Widget build(BuildContext context) {


    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: <Widget>[
              Expanded(
                child: Stack(
                  alignment: AlignmentDirectional.bottomCenter,
                  children: <Widget>[
                    PageView.builder(
                      scrollDirection: Axis.horizontal,
                      controller: controller.pageController,
                      onPageChanged: controller.selectedPageIndex,
                      itemCount: controller.onBoardingPages.length,
                      itemBuilder: (context, index) {
                        return SlideItem(
                          controller.onBoardingPages[index]
                        );
                      }
                    ),
                    Stack(
                      alignment: AlignmentDirectional.topStart,
                      children: <Widget>[
                        Container(
                          margin: const EdgeInsets.only(bottom: 35),
                          child: Obx(() {
                              return Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: List.generate(
                                    controller.onBoardingPages.length,
                                        (index) => AnimatedContainer(
                                  duration: Duration(milliseconds: 150),
                                  margin: const EdgeInsets.symmetric(horizontal: 5),
                                  height: controller.selectedPageIndex.value == index ? 12 : 8,
                                  width: controller.selectedPageIndex.value == index ? 12 : 8,
                                  decoration: BoxDecoration(
                                    color: controller.selectedPageIndex.value == index ? Theme.of(context).primaryColor : Colors.grey,
                                    borderRadius: BorderRadius.all(Radius.circular(12)),
                                  ),
                                ))
                              );
                            }
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Obx(() {
                      return CustomButton(
                      color: Theme.of(context).primaryColor,
                        lable: controller.isLastPage ? "Login" : "Next",
                        onPress: () => controller.forwardPage(),
                        lableColor: Colors.white,
                        borderColor: Theme.of(context).primaryColor,
                        buttonHeight: Get.height/20,
                        radius: 25,
                      );
                    }
                  ),
                  SizedBox(height: 10,),
                  CustomButton(
                    color: Colors.white,
                    lable: "Create Account",
                    onPress: () => Get.snackbar("wait", "Work Under Construction"),
                    lableColor: Theme.of(context).primaryColor,
                    borderColor: Theme.of(context).primaryColor,
                    buttonHeight: Get.height/20,
                    radius: 25,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
