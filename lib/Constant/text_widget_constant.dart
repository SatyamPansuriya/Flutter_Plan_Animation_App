import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget textWidgetConst(
    {required String title,
    double? fontSize = 14,
    ValueKey<int>? key,
    Color? color,
    FontWeight? fontWeight,
    String fontFamily = "Smoolthan",
    TextAlign? textAlign,
    TextOverflow? textOverflow,
    double? letterSpacing}) {
  return Text(
    key: key,
    title,
    textAlign: textAlign,
    overflow: textOverflow,
    style: TextStyle(
      fontSize: fontSize!.sp,
      color: color,
      fontWeight: fontWeight,
      fontFamily: fontFamily,
      letterSpacing: letterSpacing,
    ),
  );
}
