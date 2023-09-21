import 'package:bechamp/models/Exercise%20Model/components.dart';
import 'package:bechamp/shared/shared.dart';
import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:flutter/material.dart';

class Exercise extends StatelessWidget {
  final String? gifLink, exerciseName, muscleName;
  final int? reps, sets, day, week, rest;
  const Exercise({
    super.key,
    required this.gifLink,
    required this.exerciseName,
    required this.reps,
    required this.sets,
    required this.day,
    required this.week,
    required this.rest,
    required this.muscleName,
  });

  @override
  Widget build(BuildContext context) {
    isPlaying = false;
    return Directionality(
      textDirection: isEnglish ? TextDirection.ltr : TextDirection.rtl,
      child: Scaffold(
          appBar: BeChampAppBar(context).build(context),
          body: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.height / 4,
                  child: Image.network(
                    "$gifLink",
                    fit: BoxFit.cover,
                  ),
                ),
                Stack(children: [
                  Container(
                    margin: EdgeInsets.only(top: 48),
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height / 1.5,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(45, 45, 45, 1),
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        SizedBox(
                          height: 40,
                        ),
                        Container(
                          height: 65,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey),
                              borderRadius: BorderRadius.circular(20)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Text(
                                    "Sets",
                                    style: Theme.of(context)
                                        .textTheme
                                        .displaySmall,
                                  ),
                                  Text(
                                    "$sets",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 20),
                                  )
                                ],
                              ),
                              Container(
                                width: 1,
                                height: 30,
                                color: Colors.grey,
                              ),
                              Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Text(
                                    "Reps",
                                    style: Theme.of(context)
                                        .textTheme
                                        .displaySmall,
                                  ),
                                  Text(
                                    "$reps",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 20),
                                  )
                                ],
                              ),
                              Container(
                                width: 1,
                                height: 30,
                                color: Colors.grey,
                              ),
                              Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Text(
                                    "Rest",
                                    style: Theme.of(context)
                                        .textTheme
                                        .displaySmall,
                                  ),
                                  Text(
                                    "$rest s",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 20),
                                  )
                                ],
                              ),
                              Container(
                                width: 1,
                                height: 30,
                                color: Colors.grey,
                              ),
                              Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Text(
                                    "Muscle",
                                    style: Theme.of(context)
                                        .textTheme
                                        .displaySmall,
                                  ),
                                  Text(
                                    "${this.muscleName}",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 20),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                        Text(
                          "\n$exerciseName\n",
                          style: TextStyle(color: Colors.white, fontSize: 46),
                        ),
                        CircularCountDownTimer(
                            textStyle:
                                TextStyle(color: Colors.white, fontSize: 40),
                            strokeWidth: 20,
                            controller: cdc,
                            autoStart: false,
                            width: 153,
                            height: 153,
                            duration: rest as int,
                            fillColor: Color.fromRGBO(108, 135, 0, 1),
                            ringColor: Theme.of(context).primaryColor),
                        Text(
                          "\nDay $day, Week $week",
                          style: Theme.of(context).textTheme.displaySmall,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            TextButton(
                                onPressed: () {},
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.arrow_back,
                                      color: Colors.white,
                                    ),
                                    Text(
                                      "Back",
                                      style: Theme.of(context)
                                          .textTheme
                                          .displaySmall,
                                    ),
                                  ],
                                )),
                            BeChampButton(
                              child: Text(
                                "Next",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 20),
                              ),
                              onPressed: () {},
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  Align(
                      alignment: Alignment.topCenter,
                      child: InkWell(
                          onTap: () {
                            isPlaying ? cdc.pause() : cdc.resume();
                            isPlaying = !isPlaying;
                          },
                          child: Icon(
                            Icons.play_circle_outlined,
                            size: 80,
                            color: Theme.of(context).primaryColor,
                          ))),
                ]),
              ],
            ),
          )),
    );
  }
}
