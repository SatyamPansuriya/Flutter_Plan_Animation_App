
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:plant_app/Constant/themeData_constant.dart';


class CustomTextField extends StatelessWidget {
  const CustomTextField({Key? key,required this.controller,this.prefixIcon,this.fillColor,this.hintText, this.obscureText = false,this.suffixIcon}) : super(key: key);

  final TextEditingController controller;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final Color? fillColor;
  final String? hintText;
  final bool obscureText;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: themeColor.withOpacity(0.1),
            spreadRadius: 2,
            blurRadius: 20,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: TextFormField(
        controller: controller,
        obscureText: obscureText,
        style: TextStyle(
            fontSize: 16.sp,
            fontFamily: "Smoolthan",
            letterSpacing: 1.2,
            fontWeight: FontWeight.w600
        ),
        cursorColor: themeColor,

        decoration: InputDecoration(
          filled: true,
          fillColor: fillColor,
          hintText: hintText,
          hintStyle: TextStyle(
              color: themeColor,
              fontSize: 16.sp,
              fontFamily: "Smoolthan",
              fontWeight: FontWeight.w600,
              letterSpacing: 1.2),
          prefixIcon: prefixIcon,
          suffixIcon: suffixIcon,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0.r),
            borderSide: const BorderSide(
              color: Colors.white,
              width: 0.0,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0.r),
            borderSide: const BorderSide(
              color: Colors.white,
              width: 0.0,
            ),
          ),
        ),
      ),
    );
  }
}