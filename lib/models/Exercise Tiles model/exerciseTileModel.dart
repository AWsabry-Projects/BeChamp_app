import 'package:flutter/material.dart';

import '../../shared/shared.dart';

class ExerciseTile extends StatelessWidget {
  final void Function() onTap;
  bool canAccessNow,
      isFinished; // if isFinished is true canAccessNow has no effect
  final String? title, description;
  ExerciseTile(
      {super.key,
      required this.onTap,
      this.title,
      this.canAccessNow = false,
      this.isFinished = false,
      this.description});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: isEnglish ? TextDirection.ltr : TextDirection.rtl,
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: isFinished
                ? Theme.of(context).primaryColor
                : Colors.transparent),
        height: 80,
        child: InkWell(
          onTap: isFinished
              ? null
              : canAccessNow
                  ? onTap
                  : () {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          content: Text("Complete the Exercise before")));
                    },
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  "assets/dumbell.png",
                  width: 40,
                ),
                Text(
                  "$title\n$description",
                  style: isFinished
                      ? TextStyle(color: Colors.black, fontSize: 20)
                      : Theme.of(context).textTheme.displaySmall,
                ),
                isFinished
                    ? const Icon(
                        Icons.done,
                        color: Colors.black,
                      )
                    : canAccessNow
                        ? Icon(
                            Icons.play_circle_fill,
                            color: Theme.of(context).primaryColor,
                          )
                        : Icon(Icons.lock, color: Colors.white)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
