import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:plant_app/Constant/textField_widget.dart';
import 'package:plant_app/Constant/text_widget_constant.dart';
import 'package:plant_app/Constant/themeData_constant.dart';
import 'package:plant_app/Constant/widget_constant.dart';
import 'package:plant_app/Controllers/home_controller.dart';

class HomeScreen extends StatelessWidget {
   HomeScreen({Key? key}) : super(key: key);


  HomeController controller = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Column(
            children: [
              /// Profile Bar
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 30.h,
                    width: 30.h,
                    alignment: Alignment.bottomCenter,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.r),
                      color: whiteColor,
                    ),
                    child: Image.asset(
                      profileImage,
                      alignment: Alignment.bottomCenter,
                      height: 25.h,
                      width: 25.h,
                    ),
                  ),
                  const Spacer(),
                  Container(
                    height: 25.h,
                    width: 25.h,
                    alignment: Alignment.center,
                    decoration: const BoxDecoration(
                      color: whiteColor,
                      shape: BoxShape.circle,
                      boxShadow: [BoxShadow(color: shadowColor, spreadRadius: 0, blurRadius: 10, offset: Offset(5, 5))],
                    ),
                    child: SvgPicture.asset(bellIcon),
                  ),
                  widthBox(15),
                  Container(
                    height: 25.h,
                    width: 25.h,
                    alignment: Alignment.center,
                    decoration: const BoxDecoration(
                      color: whiteColor,
                      shape: BoxShape.circle,
                      boxShadow: [BoxShadow(color: shadowColor, spreadRadius: 0, blurRadius: 10, offset: Offset(5, 5))],
                    ),
                    child: SvgPicture.asset(settingIcon),
                  ),
                ],
              ),
              heightBox(15),
              Align(
                  alignment: Alignment.centerLeft,
                  child: textWidgetConst(
                    title: "Discover",
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                  )),
              heightBox(5),
               Align(
                  alignment: Alignment.centerLeft,
                  child: textWidgetConst(
                    title: "Bring the perfect plant at your peace.",
                    fontWeight: FontWeight.w500,
                    fontSize: 12,
                  )),
              heightBox(15),
              CustomTextField(
                controller: controller.searchController,
                hintText: "Search",
                fillColor: whiteColor,
                suffixIcon: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15.w,
                    vertical: 10.h,),

                  child: SvgPicture.asset(
                    bellIcon,
                    height: 20.h,
                    width: 20.h,
                    fit: BoxFit.cover,
                  ),
                ),
                prefixIcon: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15.w,
                    vertical: 10.h,),
                  child: SvgPicture.asset(
                    settingIcon,
                    height: 20.h,
                    width: 20.h,
                    fit: BoxFit.cover,
                  ),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
