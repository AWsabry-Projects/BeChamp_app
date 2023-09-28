import 'package:bechamp/models/Days%20Tiles%20Model/daysTiles.dart';
import 'package:bechamp/models/WeeksOrDays/components.dart';
import 'package:bechamp/models/WeeksOrDays/weekOrDay.dart';
import 'package:bechamp/shared/shared.dart';
import 'package:bechamp/views/Workouts/Day%20Workouts%20Exercises%203/dayWorkouts.dart';
import 'package:flutter/material.dart';

class WeeksScreen extends StatelessWidget {
  const WeeksScreen({super.key});

  @override
  Widget build(BuildContext context) {
    isExpanded = false;
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
                  Text(
                    "Hello,\n$userName",
                    style: Theme.of(context).textTheme.displaySmall,
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
                    contentDays: [DaysTile(onTap: () {})],
                    isCompleted: true,
                    isAccessed: false,
                    isWeek: true,
                    image: "assets/week1.png",
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
                    contentDays: [
                      DaysTile(
                          canAccessNow: true,
                          title: "Day 1",
                          onTap: () {
                            goTo(
                                context,
                                const DayWorkouts(
                                  exerciseName: "Biceps",
                                  day: 1,
                                  week: 2,
                                  description:
                                      "dhshisoh  sudiug idgwif weywf efweyf wuyf uw fhw oh owiy wur iuwg wuyfruwfruywgugw uwyfuwyftwfeuwgewi wiuwyrwyufrwuf ",
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
                    description: "dgfyefue oeiry eiruy kj",
                    // onTap: () {

                    // },
                    isCompleted: false,
                  ),
                  WeekOrDayTile(
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
