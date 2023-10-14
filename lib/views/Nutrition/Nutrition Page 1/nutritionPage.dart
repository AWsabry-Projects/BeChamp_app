import 'package:bechamp/models/Days%20Tiles%20Model/daysTiles.dart';
import 'package:bechamp/models/Nutrition%20Day%20Model/nutritionDayModel.dart';
import 'package:bechamp/models/WeeksOrDays/components.dart';
import 'package:bechamp/models/WeeksOrDays/weekOrDay.dart';
import 'package:bechamp/shared/shared.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NutritionScreen extends StatelessWidget {
  const NutritionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: isEnglish ? TextDirection.ltr : TextDirection.rtl,
      child: Scaffold(
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              Padding(
                padding:
                    EdgeInsets.all(MediaQuery.of(context).size.height / 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Text(
                          "Hello",
                          style: TextStyle(
                            fontSize: 20.sp,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          "$userName",
                          style: TextStyle(
                            fontSize: 20.sp,
                            color: Colors.white,
                            fontFamily: "assets/Gilroy-ExtraBold.otf",
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    CircleAvatar()
                  ],
                ),
              ),
              Padding(
                padding:
                    EdgeInsets.all(MediaQuery.of(context).size.height / 34),
                child: Column(
                  children: [
                    WeekOrDayTile(
                      isExpanded: false,
                      contentDays: [
                        DaysTile(
                          isFinished: true,
                          canAccessNow: true,
                          isNutrition: true,
                          onTap: () {
                            goTo(
                                context,
                                DayNutrition(
                                  day: 1,
                                  mealDetails: [
                                    "200gms Fava Beans",
                                    " 4 eggs ",
                                    "2 loafs of bread"
                                  ],
                                ));
                          },
                          title: "Meal 1",
                        ),
                        DaysTile(
                          canAccessNow: true,
                          onTap: () {
                            goTo(
                                context,
                                DayNutrition(
                                  day: 2,
                                  mealDetails: [
                                    "200gms Fava Beans",
                                    " 4 eggs ",
                                    "2 loafs of bread"
                                  ],
                                ));
                          },
                          title: "Meal 2",
                          isNutrition: true,
                        ),
                        DaysTile(
                          onTap: () {
                            goTo(
                                context,
                                DayNutrition(
                                  day: 3,
                                  mealDetails: [
                                    "200gms Fava Beans",
                                    " 4 eggs ",
                                    "2 loafs of bread"
                                  ],
                                ));
                          },
                          title: "Meal 3",
                          isNutrition: true,
                        ),
                        DaysTile(
                          onTap: () {
                            goTo(
                                context,
                                DayNutrition(
                                  day: 4,
                                  mealDetails: [
                                    "200gms Fava Beans",
                                    " 4 eggs ",
                                    "2 loafs of bread"
                                  ],
                                ));
                          },
                          title: "Meal 4",
                          isNutrition: true,
                        ),
                        DaysTile(
                          onTap: () {
                            goTo(
                                context,
                                DayNutrition(
                                  day: 5,
                                  mealDetails: [
                                    "200gms Fava Beans",
                                    " 4 eggs ",
                                    "2 loafs of bread"
                                  ],
                                ));
                          },
                          title: "Meal 5",
                          isNutrition: true,
                        )
                      ],

                      isAccessed: true,
                      image: "assets/day1.png",
                      title: "Day 1",
                      isWeek: false,
                      // onTap: () {
                      //   goTo(
                      //       context,
                      //       const DayNutrition(
                      //         day: 1,
                      //         mealDetails: ["200mg kjfk", "378mg edkejk"],
                      //       ));
                      // },
                      isCompleted: false,
                    ),
                    WeekOrDayTile(
                      isExpanded: false,
                      contentDays: [
                        DaysTile(onTap: () {}),
                        DaysTile(onTap: () {})
                      ],

                      isAccessed: false,
                      image: "assets/day2.png",
                      title: "Day 2",
                      isWeek: false,
                      // onTap: () {},
                      isCompleted: false,
                    ),
                    WeekOrDayTile(
                      isExpanded: false,

                      contentDays: [
                        DaysTile(onTap: () {}),
                        DaysTile(onTap: () {})
                      ],

                      isAccessed: false,
                      image: "assets/day3.png",
                      title: "Day 3",
                      isWeek: false,
                      // onTap: () {},
                      isCompleted: false,
                    ),
                    WeekOrDayTile(
                      isExpanded: false,

                      contentDays: [
                        DaysTile(onTap: () {}),
                        DaysTile(onTap: () {})
                      ],

                      isAccessed: false,
                      image: "assets/day4.png",
                      title: "Day 4",
                      isWeek: false,
                      // onTap: () {},
                      isCompleted: false,
                    ),
                    SizedBox(
                      height: 55,
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
