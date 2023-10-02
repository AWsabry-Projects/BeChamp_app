import 'package:bechamp/models/Exercise%20Model/exerciseModel.dart';
import 'package:bechamp/models/Exercise%20Tiles%20model/exerciseTileModel.dart';
import 'package:bechamp/shared/shared.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
    ScreenUtil.init(context, designSize: Size(428, 926));
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
            SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.all(40.0.w),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 37.h),
                      child: IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: Image.asset("assets/back.png")),
                    ),
                    SizedBox(height: 69.h),
                    Text(
                      isEnglish ? "Exercise\n" : "تمرين\n",
                      style: TextStyle(color: Colors.white, fontSize: 30),
                    ),
                    Text(
                      isEnglish ? "$description\n" : "$arabicDescription\n",
                      style: TextStyle(color: Colors.grey, fontSize: 12),
                    ),
                    SizedBox(height: 18.1.h),
                    Container(
                      height: 62.h,
                      width: 340.w,
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
                                style: TextStyle(
                                    color: Colors.white, fontSize: 15),
                              ),
                              Text(
                                "$day",
                                style: TextStyle(
                                    color: Theme.of(context).primaryColor,
                                    fontSize: 15),
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
                                style: TextStyle(
                                    color: Colors.white, fontSize: 15),
                              ),
                              Text(
                                "$week",
                                style: TextStyle(
                                    color: Theme.of(context).primaryColor,
                                    fontSize: 15),
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
                                style: TextStyle(
                                    color: Colors.white, fontSize: 15),
                              ),
                              Text(
                                isEnglish
                                    ? "${this.exerciseName}"
                                    : "${this.arabicExerciseName}",
                                style: TextStyle(
                                    color: Theme.of(context).primaryColor,
                                    fontSize: 15),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 30,
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 2,
                      child: SingleChildScrollView(
                          child: Column(
                        children: [
                          ExerciseTile(
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
            ),
          ],
        ),
      ),
    );
  }
}
