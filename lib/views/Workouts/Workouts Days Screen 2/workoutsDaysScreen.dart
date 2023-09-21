import 'package:bechamp/models/Days%20Tiles%20Model/daysTiles.dart';
import 'package:bechamp/shared/shared.dart';
import 'package:bechamp/views/Workouts/Day%20Workouts%20Exercises%203/dayWorkouts.dart';
import 'package:bechamp/views/Workouts/Workouts%20Days%20Screen%202/components.dart';
import 'package:flutter/material.dart';

class WorkoutsDays extends StatelessWidget {
  final int? week;
  const WorkoutsDays({
    super.key,
    this.week,
  });

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: isEnglish ? TextDirection.ltr : TextDirection.rtl,
      child: Scaffold(
          appBar: AppBar(
            leading: isEnglish
                ? IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(
                      Icons.arrow_circle_left_sharp,
                      color: Colors.white,
                      size: 30,
                    ))
                : IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(
                      Icons.arrow_circle_right_sharp,
                      color: Colors.white,
                      size: 30,
                    )),
          ),
          body: Padding(
            padding: const EdgeInsets.all(15.0),
            child: ListView.separated(
                itemBuilder: (context, index) {
                  return DaysTile(
                    canAccessNow: true,
                    onTap: () {
                      goTo(
                          context,
                          DayWorkouts(
                            day: index + 1,
                            week: this.week,
                          ));
                    },
                    title: "Day ${index + 1}",
                  );
                },
                separatorBuilder: (context, index) {
                  return Divider(
                    color: Colors.grey,
                  );
                },
                itemCount: numberOfDays),
          )),
    );
  }
}
