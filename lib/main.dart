import "package:bechamp/shared/shared.dart";
import "package:bechamp/views/Boarding/boarding.dart";
import "package:flutter/material.dart";
import "package:flutter_screenutil/flutter_screenutil.dart";

void main(List<String> args) {
  runApp(ScreenUtilInit(
    designSize: Size(428, 926),
    builder: (_, child) {
      return MaterialApp(
        home: Directionality(
            textDirection: isEnglish ? TextDirection.ltr : TextDirection.rtl,
            child: const Boarding()),
        theme: theme,
      );
    },
  ));
}
