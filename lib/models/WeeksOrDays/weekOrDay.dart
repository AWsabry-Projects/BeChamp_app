import 'package:bechamp/models/Days%20Tiles%20Model/daysTiles.dart';
import 'package:bechamp/models/WeeksOrDays/components.dart';
import 'package:flutter/material.dart';
import 'package:flutter_expanded_tile/flutter_expanded_tile.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WeekOrDayTile extends StatefulWidget {
  final String? image, title, description;
  final bool? isWeek, isCompleted, isAccessed;
  final List<Widget> contentDays;
  const WeekOrDayTile(
      {super.key,
      this.image,
      this.title,
      this.description,
      this.isWeek,
      required this.isCompleted,
      required this.isAccessed,
      required this.contentDays});

  @override
  State<WeekOrDayTile> createState() => _WeekOrDayTileState();
}

class _WeekOrDayTileState extends State<WeekOrDayTile> {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, designSize: Size(428, 926));

    return Padding(
      padding: EdgeInsets.symmetric(vertical: 15.h),
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Container(
            height: isExpanded ? 368.h : MediaQuery.of(context).size.height / 6,
            decoration: BoxDecoration(
                color: Colors.black, borderRadius: BorderRadius.circular(40)),
          ),
          Stack(
            alignment: isExpanded ? Alignment.topCenter : Alignment.bottomLeft,
            children: [
              Image.asset("${widget.image}"),
              widget.isAccessed as bool
                  ? SizedBox(
                      width: double.maxFinite,
                      child: ExpandedTile(
                          contentseparator: 0,
                          trailing: SizedBox(
                            width: MediaQuery.of(context).size.width / 12,
                            child: Image.asset(
                              "assets/chevron-circle-right-Bold.png",
                            ),
                          ),
                          enabled: widget.isAccessed as bool,
                          onTap: () {
                            setState(() {
                              isExpanded = !isExpanded;
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
                            padding: EdgeInsets.all(34.h),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "${widget.title}",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 35,
                                      fontWeight: FontWeight.bold),
                                ),
                                widget.isWeek as bool
                                    ? isExpanded
                                        ? SizedBox()
                                        : Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Container(
                                                height: 20,
                                                width: 3,
                                                margin: EdgeInsets.all(5),
                                                color: Theme.of(context)
                                                    .primaryColor,
                                              ),
                                              SizedBox(
                                                width: 204.w,
                                                child: Text(
                                                  "${widget.description}",
                                                  overflow: TextOverflow.fade,
                                                  maxLines: 1,
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .displaySmall,
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
                                    color: Colors.white,
                                    fontSize: 35,
                                    fontWeight: FontWeight.bold),
                              ),
                              widget.isWeek as bool
                                  ? Row(
                                      children: [
                                        Container(
                                          height: 20,
                                          margin: EdgeInsets.all(8),
                                          width: 3,
                                          color: Theme.of(context).primaryColor,
                                        ),
                                        Text(
                                          "${widget.description}",
                                          style: Theme.of(context)
                                              .textTheme
                                              .displaySmall,
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
                      width: MediaQuery.of(context).size.width / 1,
                      height: MediaQuery.of(context).size.height / 5,
                      decoration: BoxDecoration(
                          color: Colors.grey.shade900.withOpacity(0.9),
                          borderRadius: BorderRadius.circular(30)),
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.done_sharp,
                              color: Colors.white,
                              size: 30,
                            ),
                            Text(
                              "\nYour ${widget.isWeek as bool ? "Workout" : "Day"} plan this week is done",
                              style: Theme.of(context).textTheme.displaySmall,
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
    );
  }
}
