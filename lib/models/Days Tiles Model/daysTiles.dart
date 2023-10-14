import 'package:bechamp/shared/shared.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DaysTile extends StatelessWidget {
  final void Function() onTap;
  bool canAccessNow,
      isFinished; // if isFinished is true canAccessNow has no effect
  final String? title;
  final bool? isNutrition;
  DaysTile(
      {super.key,
      required this.onTap,
      this.title,
      this.canAccessNow = false,
      this.isFinished = false,
      this.isNutrition = false});

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, designSize: Size(428, 926));
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 34.w),
      child: Directionality(
        textDirection: isEnglish ? TextDirection.ltr : TextDirection.rtl,
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.r),
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
                          ? TextStyle(
                              fontFamily: "assets/Gilroy-ExtraBold.otf",
                              fontSize: 12.sp,
                              fontWeight: FontWeight.bold,
                              color: Colors.black)
                          : TextStyle(
                              fontFamily: "assets/Gilroy-ExtraBold.otf",
                              fontSize: 12.sp,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                    ),
                  ],
                ),
                Row(
                  children: [
                    isNutrition as bool
                        ? SizedBox()
                        : isFinished
                            ? Text(
                                "5 min",
                                style: TextStyle(
                                    fontSize: 10.sp,
                                    color: Color.fromRGBO(4, 4, 4, 1)),
                              )
                            : Text(
                                "5 min",
                                style: TextStyle(
                                    fontSize: 10.sp,
                                    color: Color.fromRGBO(255, 255, 255, 1)),
                              ),
                    SizedBox(
                      width: 19.w,
                    ),
                    isFinished
                        ? SizedBox(
                            width: 17.w,
                            height: 17.h,
                            child: Stack(
                              alignment: Alignment.center,
                              children: [
                                CircleAvatar(
                                  backgroundColor:
                                      Color.fromRGBO(119, 255, 0, 1),
                                ),
                                SvgPicture.asset(
                                  "assets/check-circle-Regular_1_.svg",
                                  width: 10.55.w,
                                  height: 7.22.h,
                                ),
                              ],
                            ),
                          )
                        : Icon(
                            Icons.circle_outlined,
                            color: Color(0xFF707070),
                            size: 16.h,
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
