import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:glassmorphism_ui/glassmorphism_ui.dart';
import 'package:plant_app/Animation_Constant/bounce_animation.dart';
import 'package:plant_app/Animation_Constant/transform_Animation.dart';
import 'package:plant_app/Constant/text_widget_constant.dart';
import 'package:plant_app/Constant/themeData_constant.dart';
import 'package:plant_app/Constant/widget_constant.dart';
import 'package:plant_app/Controllers/AppOpen_controller.dart';

class AppOpenScreen extends StatelessWidget {
  AppOpenScreen({Key? key}) : super(key: key);

  AppOpenController controller = Get.put(AppOpenController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: Get.height,
        width: Get.width,
        child: Stack(
          fit: StackFit.expand,
          alignment: Alignment.center,
          children: [
            Image.asset(
              appOpenImage,
              fit: BoxFit.fitHeight,
            ),
            Obx(() {
              if (!controller.isAuthentication.value) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    heightBox(280),

                    FadeSlideTransition(
                      x: 0,
                      y: 100,
                      duration: 400,
                      isStart: true,
                      startAfter: 100,
                      child: GestureDetector(
                        onTap: () {
                          controller.isAuthentication.value = true;
                        },
                        child: GlassContainer(
                          height: 50.h,
                          width: 150.w,
                          borderRadius: BorderRadius.circular(12.r),
                          shadowColor: Colors.white,
                          border: Border.all(width: 1.5.w, color: whiteColor),
                          // blur: 10,
                          child: Center(
                              child: BouncingWidget(
                            startAfter: 900,
                            child: textWidgetConst(
                              title: "Signing",
                              color: whiteColor,
                              fontSize: 16,
                            ),
                          )),
                        ),
                      ),
                    ),
                    heightBox(30),
                    FadeSlideTransition(
                      x: 0,
                      y: 100,
                      duration: 400,
                      isStart: true,
                      startAfter: 300,
                      child: GlassContainer(
                        height: 50.h,
                        width: 200.w,

                        borderRadius: BorderRadius.circular(12.r),
                        shadowColor: Colors.white,
                        border: Border.all(width: 1.5.w, color: whiteColor),
                        // blur: 10,
                        child: Center(
                            child: BouncingWidget(
                          startAfter: 1100,
                          child: textWidgetConst(
                            title: "Create Account",
                            color: whiteColor,
                            fontSize: 16,
                          ),
                        )),
                      ),
                    ),
                    heightBox(180),
                    FadeSlideTransition(
                      x: 0,
                      y: 100,
                      duration: 400,
                      isStart: true,
                      startAfter: 500,
                      child: GlassContainer(
                        height: 50.h,
                        width: 150.w,
                        color: whiteColor.withOpacity(0.6),
                        borderRadius: BorderRadius.circular(12.r),
                        shadowColor: Colors.white,
                        border: Border.all(width: 1.5.w, color: whiteColor),
                        // blur: 10,
                        child: Center(
                          child: BouncingWidget(
                              startAfter: 1300,
                              child: textWidgetConst(
                                title: "Let's Start",
                                color: themeColor,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold
                              )),
                        ),
                      ),
                    ),
                  ],
                );
              } else {
                return GestureDetector(
                  onTap: () {
                    controller.isAuthentication.value =false;
                  },
                  child: const Center(
                    child: CircularProgressIndicator(color: whiteColor),
                  ),
                );
              }

            })
          ],
        ),
      ),
    );
  }
}
