import 'package:bechamp/models/Exercise%20Model/exerciseModel.dart';
import 'package:bechamp/models/Exercise%20Tiles%20model/exerciseTileModel.dart';
import 'package:bechamp/shared/shared.dart';
import 'package:flutter/material.dart';

class DayWorkouts extends StatelessWidget {
  final String? exerciseName,
      description,
      arabicDescription,
      arabicExerciseName;
  final int? day, week;
  const DayWorkouts(
      {super.key,
      this.exerciseName,
      this.day,
      this.week,
      this.description,
      this.arabicDescription,
      this.arabicExerciseName});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: isEnglish ? TextDirection.ltr : TextDirection.rtl,
      child: Scaffold(
        body: Stack(
          children: [
            Container(
              width: double.infinity,
              height: double.infinity,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage("assets/workoutsDaysBackground.png"))),
            ),
            Padding(
              padding: const EdgeInsets.all(40.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: isEnglish
                          ? Icon(
                              Icons.arrow_circle_left_sharp,
                              color: Colors.white,
                              size: 30,
                            )
                          : Icon(
                              Icons.arrow_circle_right_sharp,
                              color: Colors.white,
                              size: 30,
                            )),
                  SizedBox(height: MediaQuery.of(context).size.height / 14),
                  Text(
                    isEnglish ? "Exercise" : "تمرين",
                    style: TextStyle(color: Colors.white, fontSize: 30),
                  ),
                  Text(
                    isEnglish ? "$description\n" : "$arabicDescription\n",
                    style: TextStyle(color: Colors.grey, fontSize: 20),
                  ),
                  Container(
                    height: 62,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(20)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              isEnglish ? "Day" : "اليوم",
                              style: Theme.of(context).textTheme.displaySmall,
                            ),
                            Text(
                              "$day",
                              style: TextStyle(
                                  color: Theme.of(context).primaryColor,
                                  fontSize: 20),
                            )
                          ],
                        ),
                        Container(
                          width: 1,
                          height: 30,
                          color: Colors.grey,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              isEnglish ? "Week" : "الأسبوع",
                              style: Theme.of(context).textTheme.displaySmall,
                            ),
                            Text(
                              "$week",
                              style: TextStyle(
                                  color: Theme.of(context).primaryColor,
                                  fontSize: 20),
                            )
                          ],
                        ),
                        Container(
                          width: 1,
                          height: 30,
                          color: Colors.grey,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              isEnglish ? "Muscle" : "العضله",
                              style: Theme.of(context).textTheme.displaySmall,
                            ),
                            Text(
                              isEnglish
                                  ? "${this.exerciseName}"
                                  : "${this.arabicExerciseName}",
                              style: TextStyle(
                                  color: Theme.of(context).primaryColor,
                                  fontSize: 20),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 2,
                    child: SingleChildScrollView(
                        child: Column(
                      children: [
                        ExerciseTile(
                          isFinished: true,
                          canAccessNow: true,
                          onTap: () {
                            goTo(
                                context,
                                Exercise(
                                    muscleName: "bicep",
                                    gifLink:
                                        "https://media.tenor.com/aqN6k1GYfVYAAAAM/f-orever-online.gif",
                                    exerciseName: "jumping rope",
                                    reps: 15,
                                    sets: 3,
                                    day: day,
                                    week: week,
                                    rest: 90));
                          },
                          title: "bicep",
                          description: "10x5",
                        ),
                        ExerciseTile(
                          canAccessNow: true,
                          onTap: () {
                            goTo(
                                context,
                                Exercise(
                                    muscleName: "bicep",
                                    gifLink:
                                        "https://media.tenor.com/aqN6k1GYfVYAAAAM/f-orever-online.gif",
                                    exerciseName: "jumping rope",
                                    reps: 15,
                                    sets: 3,
                                    day: day,
                                    week: week,
                                    rest: 90));
                          },
                          title: "bicep",
                          description: "10x5",
                        ),
                        ExerciseTile(
                          canAccessNow: false,
                          onTap: () {
                            goTo(
                                context,
                                Exercise(
                                    muscleName: "bicep",
                                    gifLink:
                                        "https://media.tenor.com/aqN6k1GYfVYAAAAM/f-orever-online.gif",
                                    exerciseName: "jumping rope",
                                    reps: 15,
                                    sets: 3,
                                    day: day,
                                    week: week,
                                    rest: 90));
                          },
                          title: "bicep",
                          description: "10x5",
                        )
                      ],
                    )),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
