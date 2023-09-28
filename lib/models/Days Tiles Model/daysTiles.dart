import 'package:bechamp/shared/shared.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
    ScreenUtil.init(context, designSize: Size(428, 926));
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 34.w),
      child: Directionality(
        textDirection: isEnglish ? TextDirection.ltr : TextDirection.rtl,
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: isFinished
                  ? Theme.of(context).primaryColor
                  : Color.fromRGBO(42, 42, 42, 1)),
          height: 39.h,
          width: 308.w,
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
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    SizedBox(
                      width: 16.w,
                    ),
                    Text(
                      "$title",
                      style: isFinished
                          ? TextStyle(color: Colors.black, fontSize: 20)
                          : Theme.of(context).textTheme.displaySmall,
                    ),
                  ],
                ),
                Row(
                  children: [
                    isFinished
                        ? SizedBox(
                            width: MediaQuery.of(context).size.width / 10,
                            height: MediaQuery.of(context).size.height / 10,
                            child: Image.asset(
                              "assets/done.png",
                            ),
                          )
                        : Icon(
                            Icons.circle_outlined,
                            color: Colors.grey,
                            size: 15,
                          ),
                    SizedBox(
                      width: 13.h,
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
