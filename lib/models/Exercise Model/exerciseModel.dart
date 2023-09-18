import 'package:bechamp/shared/shared.dart';
import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:flutter/material.dart';

class Exercise extends StatelessWidget {
  final String? gifLink, exerciseNameOrMuscle;
  final int? reps, sets, day, week, rest;
  const Exercise({
    super.key,
    required this.gifLink,
    required this.exerciseNameOrMuscle,
    required this.reps,
    required this.sets,
    required this.day,
    required this.week,
    required this.rest,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BeChampAppBar(context).build(context),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height / 5,
            child: Image.network(
              "$gifLink",
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            width: double.maxFinite,
            height: MediaQuery.of(context).size.height / 1.7,
            decoration: BoxDecoration(
                color: Color.fromRGBO(45, 45, 45, 1),
                borderRadius: BorderRadius.circular(30)),
            child: CircularCountDownTimer(
                controller: CountDownController(),
                width: 100,
                height: 100,
                duration: 10,
                fillColor: Colors.red,
                ringColor: Colors.white),
          )
        ],
      ),
    );
  }
}
