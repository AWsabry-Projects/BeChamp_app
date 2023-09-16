import 'package:bechamp/models/WeeksOrDays/weekOrDay.dart';
import 'package:bechamp/shared/shared.dart';
import 'package:flutter/material.dart';

class NutritionScreen extends StatelessWidget {
  const NutritionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            ),
            WeekOrDayTile(
              image: "assets/day2.png",
              title: "Day 2",
              isWeek: false,
            ),
            WeekOrDayTile(
              image: "assets/day3.png",
              title: "Day 3",
              isWeek: false,
            ),
            WeekOrDayTile(
              image: "assets/day4.png",
              title: "Day 4",
              isWeek: false,
            ),
            SizedBox(
              height: 55,
            )
          ],
        ),
      ),
    );
  }
}
