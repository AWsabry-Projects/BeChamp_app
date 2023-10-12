import 'package:bechamp/models/Days%20Tiles%20Model/daysTiles.dart';
import 'package:bechamp/models/WeeksOrDays/components.dart';
import 'package:flutter/material.dart';
import 'package:flutter_expanded_tile/flutter_expanded_tile.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WeekOrDayTile extends StatefulWidget {
  final String? image, title, description;
  final bool? isWeek, isCompleted, isAccessed;
  final List<Widget> contentDays;
  bool isExpanded = false;

  WeekOrDayTile(
      {super.key,
      this.image,
      this.title,
      this.description,
      this.isWeek,
      required this.isCompleted,
      required this.isAccessed,
      required this.contentDays,
      required this.isExpanded});

  @override
  State<WeekOrDayTile> createState() => _WeekOrDayTileState();
}

class _WeekOrDayTileState extends State<WeekOrDayTile> {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, designSize: Size(428, 926));

    return Padding(
      padding: EdgeInsets.symmetric(vertical: 15.h),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(40.r),
            border: widget.isExpanded
                ? Border.all(width: 2, color: Color(0xFF77FFAD))
                : Border.all(width: 0)),
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            Container(
              height: widget.isExpanded
                  ? 368.h
                  : MediaQuery.of(context).size.height / 6,
              decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(40.r)),
            ),
            Stack(
              alignment: widget.isExpanded
                  ? Alignment.topCenter
                  : Alignment.bottomLeft,
              children: [
                Image.asset(
                  "${widget.image}",
                  fit: BoxFit.fill,
                ),
                widget.isAccessed as bool
                    ? SizedBox(
                        width: double.maxFinite,
                        child: ExpandedTile(
                            contentseparator: 0,
                            trailing: widget.isExpanded
                                ? SizedBox()
                                : SizedBox(
                                    width: 30.w,
                                    height: 30.h,
                                    child: Image.asset(
                                      "assets/chevron-circle-right-Bold.png",
                                    ),
                                  ),
                            enabled: widget.isAccessed as bool,
                            onTap: () {
                              setState(() {
                                widget.isExpanded = !widget.isExpanded;
                              });
                            },
                            theme: ExpandedTileThemeData(
                                trailingPadding:
                                    EdgeInsets.symmetric(horizontal: 28.w),
                                leadingPadding: EdgeInsets.all(0),
                                titlePadding: EdgeInsets.all(0),
                                contentPadding: EdgeInsets.all(0),
                                headerPadding: EdgeInsets.all(0),
                                headerColor: Colors.transparent,
                                contentBackgroundColor: Colors.transparent),
                            title: Padding(
                              padding: EdgeInsets.only(
                                  left: 34.w, bottom: 14.h, top: 46.h),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "${widget.title}",
                                    style: TextStyle(
                                        fontFamily:
                                            "assets/Gilroy-ExtraBold.otf",
                                        color: Colors.white,
                                        fontSize: 35.sp,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  widget.isWeek as bool
                                      ? widget.isExpanded
                                          ? SizedBox()
                                          : Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                Text(
                                                  '|',
                                                  style: TextStyle(
                                                      color: Color(0xFFA4E82E),
                                                      fontSize: 15.sp,
                                                      fontFamily:
                                                          'assets/Gilroy-ExtraBold.otf'),
                                                ),
                                                SizedBox(
                                                  width: 222.w,
                                                  child: Text(
                                                    " ${widget.description}",
                                                    overflow: TextOverflow.fade,
                                                    maxLines: 1,
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 15.sp,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            )
                                      : SizedBox()
                                ],
                              ),
                            ),
                            content: Column(
                              children: List.generate(
                                  widget.contentDays.length,
                                  (index) => Column(
                                        children: [
                                          widget.contentDays[index],
                                          SizedBox(
                                            height: 10.h,
                                          )
                                        ],
                                      )),
                            ),
                            controller: ExpandedTileController()),
                      )
                    : Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(),
                          Padding(
                            padding: EdgeInsets.all(
                                MediaQuery.of(context).size.height / 40),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "${widget.title}",
                                  style: TextStyle(
                                      fontFamily: "assets/Gilroy-ExtraBold.otf",
                                      color: Colors.white,
                                      fontSize: 35.sp,
                                      fontWeight: FontWeight.bold),
                                ),
                                widget.isWeek as bool
                                    ? Row(
                                        children: [
                                          Text(
                                            '|',
                                            style: TextStyle(
                                                color: Color(0xFFA4E82E),
                                                fontSize: 15.sp,
                                                fontFamily:
                                                    'assets/Gilroy-ExtraBold.otf'),
                                          ),
                                          Text(
                                            " ${widget.description}",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 15.sp,
                                            ),
                                          ),
                                        ],
                                      )
                                    : SizedBox()
                              ],
                            ),
                          ),
                        ],
                      ),
              ],
            ),
            Stack(
              children: [
                widget.isCompleted as bool
                    ? Container(
                        width: double.infinity,
                        height: 173.h,
                        decoration: BoxDecoration(
                            color: Colors.grey.shade900.withOpacity(0.9),
                            borderRadius: BorderRadius.circular(30.r)),
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                "assets/donwWhite.png",
                                width: 40.w,
                              ),
                              Text(
                                "\nYour ${widget.isWeek as bool ? "Workout" : "Day"} plan this week is done",
                                style: TextStyle(
                                    fontSize: 9.sp, color: Colors.white),
                              )
                            ],
                          ),
                        ),
                      )
                    : Container()
              ],
            ),
          ],
        ),
      ),
    );
  }
}
