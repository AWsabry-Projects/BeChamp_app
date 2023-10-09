import 'package:bechamp/models/Days%20Tiles%20Model/daysTiles.dart';
import 'package:bechamp/models/WeeksOrDays/components.dart';
import 'package:bechamp/models/WeeksOrDays/weekOrDay.dart';
import 'package:bechamp/shared/shared.dart';
import 'package:bechamp/views/Workouts/Day%20Workouts%20Exercises%203/dayWorkouts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WeeksScreen extends StatelessWidget {
  const WeeksScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: isEnglish ? TextDirection.ltr : TextDirection.rtl,
      child: Scaffold(
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(children: [
            Padding(
              padding: EdgeInsets.all(MediaQuery.of(context).size.height / 20),
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
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  CircleAvatar()
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(MediaQuery.of(context).size.width / 20),
              child: Column(
                children: [
                  WeekOrDayTile(
                    isExpanded: false,

                    contentDays: [
                      DaysTile(
                        onTap: () {},
                        title: "day 1 (chest, triceps)",
                        isFinished: true,
                      ),
                      DaysTile(
                        onTap: () {},
                        title: "day 2 (Back, Biceps)",
                      ),
                      DaysTile(
                        onTap: () {},
                        title: "Days 3 Legs",
                      ),
                      DaysTile(
                        onTap: () {},
                        title: "Day 4 (Arms)",
                      ),
                      DaysTile(
                        onTap: () {},
                        title: "Day 5,6,7 ",
                      )
                    ],
                    isCompleted: true,
                    isAccessed: !false,
                    isWeek: true,
                    image: "assets/week_1.png",
                    title: "Week 1",
                    description: "dgfyefue oeiry eiruy kj",
                    // onTap: () {
                    //   goTo(
                    //       context,
                    //       const WorkoutsDays(
                    //         week: 1,
                    //       ));
                    // },
                  ),
                  WeekOrDayTile(
                    isExpanded: false,

                    contentDays: [
                      DaysTile(
                          canAccessNow: true,
                          title: "Day 1",
                          onTap: () {
                            goTo(
                                context,
                                const DayWorkouts(
                                  exerciseName: "Biceps jdfgudjhs idhd s",
                                  day: 1,
                                  week: 2,
                                  description: "04 workout weeks for beginner",
                                ));
                          }),
                      DaysTile(onTap: () {}),
                      DaysTile(onTap: () {}),
                      DaysTile(onTap: () {}),
                      DaysTile(onTap: () {})
                    ],
                    isAccessed: true,
                    isWeek: true,
                    image: "assets/week2.png",
                    title: "Week 2",
                    description: "04 workout weeks for beginner",
                    // onTap: () {

                    // },
                    isCompleted: !true,
                  ),
                  WeekOrDayTile(
                    isExpanded: false,

                    contentDays: [],
                    isAccessed: false,
                    isWeek: true,
                    image: "assets/week3.png",
                    title: "Week 3",
                    description: "dgfyefue oeiry eiruy kj",
                    // onTap: () {
                    //   goTo(
                    //       context,
                    //       const WorkoutsDays(
                    //         week: 3,
                    //       ));
                    // },
                    isCompleted: false,
                  ),
                  WeekOrDayTile(
                    isExpanded: false,

                    contentDays: [],
                    isAccessed: false,
                    isWeek: true,
                    image: "assets/week4.png",
                    title: "Week 4",
                    description: "dgfyefue oeiry eiruy kj",
                    // onTap: () {
                    //   goTo(
                    //       context,
                    //       const WorkoutsDays(
                    //         week: 4,
                    //       ));
                    // },
                    isCompleted: false,
                  )
                ],
              ),
            ),
            SizedBox(
              height: 55,
            )
          ]),
        ),
      ),
    );
  }
}
