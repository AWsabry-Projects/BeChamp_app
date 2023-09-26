import 'package:bechamp/shared/shared.dart';
import 'package:flutter/material.dart';

class DaysTile extends StatelessWidget {
  final void Function() onTap;
  bool canAccessNow,
      isFinished; // if isFinished is true canAccessNow has no effect
  final String? title;
  DaysTile(
      {super.key,
      required this.onTap,
      this.title,
      this.canAccessNow = false,
      this.isFinished = false});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: isEnglish ? TextDirection.ltr : TextDirection.rtl,
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: isFinished
                ? Theme.of(context).primaryColor
                : Color.fromRGBO(42, 42, 42, 1)),
        height: MediaQuery.of(context).size.height / 20,
        child: InkWell(
          onTap: isFinished
              ? null
              : canAccessNow
                  ? onTap
                  : () {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          content: Text(isEnglish
                              ? "Complete the days respectively"
                              : "أكمل الايام السابقه في البدايه")));
                    },
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "$title",
                  style: isFinished
                      ? TextStyle(color: Colors.black, fontSize: 20)
                      : Theme.of(context).textTheme.displaySmall,
                ),
                isFinished
                    ? SizedBox(
                        width: 100,
                        height: 100,
                        child: Image.asset(
                          "assets/done.png",
                        ),
                      )
                    : canAccessNow
                        ? Icon(
                            Icons.circle_outlined,
                            color: Colors.grey,
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
