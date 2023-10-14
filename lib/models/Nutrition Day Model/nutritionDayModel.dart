import 'dart:ui';

import 'package:bechamp/shared/shared.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DayNutrition extends StatelessWidget {
  final int? day;
  final List<String>? mealDetails;

  const DayNutrition({super.key, required this.day, this.mealDetails});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: isEnglish ? TextDirection.ltr : TextDirection.rtl,
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
            onPressed: () {},
            backgroundColor: Colors.white,
            child: Container(
              child: Image.asset("assets/check.png"),
            )),
        body: Stack(
          children: [
            Container(
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/nutritionBG.png"),
                      fit: BoxFit.cover)),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 30.h, left: 30.w, right: 30.w),
                  child: IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: isEnglish
                          ? Icon(
                              Icons.arrow_circle_left_rounded,
                              color: Colors.white,
                              size: 41.w,
                            )
                          : Icon(
                              Icons.arrow_circle_right_rounded,
                              color: Colors.white,
                              size: 41.w,
                            )),
                ),
                Text(
                  isEnglish ? "\t Meal $day" : "\t الوجبة $day",
                  style: TextStyle(
                      fontSize: 65.sp,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontFamily: "assets/Gilroy-ExtraBold.otf"),
                ),
                Container(
                    clipBehavior: Clip.antiAlias,
                    decoration: BoxDecoration(
                        borderRadius: isEnglish
                            ? BorderRadius.only(topRight: Radius.circular(40.r))
                            : BorderRadius.only(
                                topLeft: Radius.circular(40.r))),
                    width: 357.w,
                    height: 678.h,
                    child: ClipRect(
                      child: BackdropFilter(
                        filter: ImageFilter.blur(sigmaX: 20.0, sigmaY: 20.0),
                        child: Container(
                          color: Colors.black.withOpacity(0.1),
                          child: SingleChildScrollView(
                            child: Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    isEnglish ? "Details:" : "التفاصيل:",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 30.sp,
                                        fontFamily:
                                            "assets/Gilroy-ExtraBold.otf",
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: List.generate(
                                          mealDetails!.length,
                                          (index) => Text(
                                              "${mealDetails![index]}",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 20.sp))),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ))
              ],
            )
          ],
        ),
      ),
    );
  }
}
