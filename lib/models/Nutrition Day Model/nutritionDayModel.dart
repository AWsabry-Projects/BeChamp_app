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
                  padding: const EdgeInsets.only(top: 30, left: 30, right: 30),
                  child: IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: isEnglish
                          ? Icon(
                              Icons.arrow_circle_left_rounded,
                              color: Colors.white,
                              size: 30,
                            )
                          : Icon(
                              Icons.arrow_circle_right_rounded,
                              color: Colors.white,
                              size: 30,
                            )),
                ),
                Text(
                  isEnglish ? "\t  Meal $day" : "\t  الوجبة $day",
                  style: TextStyle(fontSize: 65.sp, color: Colors.white),
                ),
                Container(
                    clipBehavior: Clip.antiAlias,
                    decoration: BoxDecoration(
                        borderRadius: isEnglish
                            ? const BorderRadius.only(
                                topRight: Radius.circular(40))
                            : const BorderRadius.only(
                                topLeft: Radius.circular(40))),
                    height: MediaQuery.of(context).size.height / 1.4,
                    width: MediaQuery.of(context).size.width / 1.3,
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
                                    style: Theme.of(context)
                                        .textTheme
                                        .headlineMedium,
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
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .displaySmall)),
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
