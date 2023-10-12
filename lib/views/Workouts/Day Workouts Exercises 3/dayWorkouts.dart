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
                      style: TextStyle(color: Colors.white, fontSize: 30.sp),
                    ),
                    Text(
                      isEnglish ? "$description\n" : "$arabicDescription\n",
                      style:
                          TextStyle(color: Color(0xFFAEAEAE), fontSize: 12.sp),
                    ),
                    SizedBox(height: 18.1.h),
                    Container(
                      height: 62.h,
                      width: 340.w,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(20.r)),
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
                                  color: Colors.white,
                                  fontSize: 15.sp,
                                ),
                              ),
                              Text(
                                "$day",
                                style: TextStyle(
                                    color: Theme.of(context).primaryColor,
                                    fontSize: 15.sp,
                                    fontFamily: "assets/Gilroy-ExtraBold.otf"),
                              )
                            ],
                          ),
                          Container(
                            width: 1.w,
                            height: 25.h,
                            color: Colors.grey,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                isEnglish ? "Week" : "الأسبوع",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 15.sp),
                              ),
                              Text(
                                "$week",
                                style: TextStyle(
                                    color: Theme.of(context).primaryColor,
                                    fontSize: 15.sp,
                                    fontFamily: "assets/Gilroy-ExtraBold.otf"),
                              )
                            ],
                          ),
                          Container(
                            width: 1.w,
                            height: 25.h,
                            color: Colors.grey,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                isEnglish ? "Muscle" : "العضله",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 15.sp),
                              ),
                              Text(
                                isEnglish
                                    ? "${this.exerciseName}"
                                    : "${this.arabicExerciseName}",
                                style: TextStyle(
                                    color: Theme.of(context).primaryColor,
                                    fontSize: 15.sp,
                                    fontFamily: "assets/Gilroy-ExtraBold.otf"),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 35.h,
                    ),
                    SizedBox(
                      width: double.maxFinite,
                      height: 430.h,
                      child: SingleChildScrollView(
                          child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
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
                    ),
                    SizedBox(
                      width: 321.w,
                      height: 50.h,
                      child: BeChampButton(
                          onPressed: () {},
                          child: Text(
                            "Start the workout",
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: "assets/Gilroy-ExtraBold.otf",
                                fontSize: 23.sp,
                                fontWeight: FontWeight.bold,
                                shadows: [
                                  Shadow(
                                      color: Colors.grey.shade700,
                                      blurRadius: 40.r)
                                ]),
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
