import 'package:bechamp/models/Nutrition%20Day%20Model/nutritionDayModel.dart';
import 'package:bechamp/models/WeeksOrDays/weekOrDay.dart';
import 'package:bechamp/shared/shared.dart';
import 'package:flutter/material.dart';

class NutritionScreen extends StatelessWidget {
  const NutritionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: isEnglish ? TextDirection.ltr : TextDirection.rtl,
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(35.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Hello,\n$userName",
                      style: Theme.of(context).textTheme.displaySmall,
                    ),
                    CircleAvatar()
                  ],
                ),
              ),
              WeekOrDayTile(
                image: "assets/day1.png",
                title: "Day 1",
                isWeek: false,
                onTap: () {
                  goTo(
                      context,
                      const DayNutrition(
                        day: 1,
                        breakFast: ["200mg kjfk", "378mg edkejk"],
                        afterBreakFast: [
                          "200mg kjfk",
                          "833mg djdhg",
                          "378mg edkejk"
                        ],
                        lunch: ["200mg kjfk", "378mg edkejk"],
                        afterWorkout: ["200mg kjfk"],
                        dinner: [
                          "200mg kjfk",
                          "378mg edkejk",
                          "22mg jhf",
                          "3663mg jfhe"
                        ],
                      ));
                },
                isCompleted: false,
              ),
              WeekOrDayTile(
                image: "assets/day2.png",
                title: "Day 2",
                isWeek: false,
                onTap: () {},
                isCompleted: false,
              ),
              WeekOrDayTile(
                image: "assets/day3.png",
                title: "Day 3",
                isWeek: false,
                onTap: () {},
                isCompleted: false,
              ),
              WeekOrDayTile(
                image: "assets/day4.png",
                title: "Day 4",
                isWeek: false,
                onTap: () {},
                isCompleted: false,
              ),
              SizedBox(
                height: 55,
              )
            ],
          ),
        ),
      ),
    );
  }
}
