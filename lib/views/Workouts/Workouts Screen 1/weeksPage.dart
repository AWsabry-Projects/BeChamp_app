import 'package:bechamp/models/WeeksOrDays/weekOrDay.dart';
import 'package:bechamp/shared/shared.dart';
import 'package:bechamp/views/Workouts/Workouts%20Days%20Screen%202/workoutsDaysScreen.dart';
import 'package:flutter/material.dart';

class WeeksScreen extends StatelessWidget {
  const WeeksScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: isEnglish ? TextDirection.ltr : TextDirection.rtl,
      child: Scaffold(
        body: SingleChildScrollView(
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
                    isCompleted: true,
                    isAccessed: false,
                    isWeek: true,
                    image: "assets/week1.png",
                    title: "Week 1",
                    description: "dgfyefue oeiry eiruy kj",
                    onTap: () {
                      goTo(
                          context,
                          const WorkoutsDays(
                            week: 1,
                          ));
                    },
                  ),
                  WeekOrDayTile(
                    isAccessed: true,
                    isWeek: true,
                    image: "assets/week2.png",
                    title: "Week 2",
                    description: "dgfyefue oeiry eiruy kj",
                    onTap: () {
                      goTo(
                          context,
                          const WorkoutsDays(
                            week: 2,
                          ));
                    },
                    isCompleted: false,
                  ),
                  WeekOrDayTile(
                    isAccessed: false,
                    isWeek: true,
                    image: "assets/week3.png",
                    title: "Week 3",
                    description: "dgfyefue oeiry eiruy kj",
                    onTap: () {
                      goTo(
                          context,
                          const WorkoutsDays(
                            week: 3,
                          ));
                    },
                    isCompleted: false,
                  ),
                  WeekOrDayTile(
                    isAccessed: false,
                    isWeek: true,
                    image: "assets/week4.png",
                    title: "Week 4",
                    description: "dgfyefue oeiry eiruy kj",
                    onTap: () {
                      goTo(
                          context,
                          const WorkoutsDays(
                            week: 4,
                          ));
                    },
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
