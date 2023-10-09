import 'package:bechamp/shared/shared.dart';
import 'package:bechamp/views/Adding%20Goals/components.dart';
import 'package:bechamp/views/Congratulations/congratulations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vertical_picker/vertical_picker.dart';

class AddingGoals extends StatelessWidget {
  const AddingGoals({super.key});

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, designSize: Size(428, 926));

    return Scaffold(
      appBar: BeChampAppBar(context).build(context),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  "What's your goal ?\n",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: "assets/Gilroy-ExtraBold.otf",
                      fontSize: 40.sp,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                    "Your answer will help us to create your personalized plan\n",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 15.sp,
                      color: Colors.white,
                      fontFamily: "bechampFont",
                    )),
                SizedBox(
                  height: 53.h,
                ),
                SizedBox(
                    height: 330.h,
                    width: 315.w,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        ListWheelScrollView(
                          physics: BouncingScrollPhysics(),
                          squeeze: 1,
                          onSelectedItemChanged: (val) {
                            print(goals[val]);
                          },
                          overAndUnderCenterOpacity: 0.4,
                          itemExtent: 90,
                          magnification: 1.1,
                          useMagnifier: true,
                          children: List.generate(
                              5,
                              (index) => Text(
                                    "\n" + goals[index],
                                    style: TextStyle(
                                        fontFamily:
                                            "assets/Gilroy-ExtraBold.otf",
                                        wordSpacing: 0.36.sp,
                                        color: Colors.white,
                                        fontSize: 32.sp,
                                        fontWeight: FontWeight.bold),
                                  )),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              color: Theme.of(context).primaryColor,
                              height: 7.h,
                              width: 250.w,
                            ),
                            SizedBox(
                              height: 105.h,
                            ),
                            Container(
                              color: Theme.of(context).primaryColor,
                              height: 7.h,
                              width: 250.w,
                            )
                          ],
                        )
                      ],
                    )),
                SizedBox(
                  height: 80.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SizedBox(
                        height: 52.h,
                        width: 99.w,
                        child: BeChampButton(
                            onPressed: () {
                              submitGoal(); // it will take the choosed goal directle from the variable (choosedGoal) in components file
                              goTo(context, Congratulations());
                            },
                            child: Text(
                              "Next >",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20.sp,
                                  fontWeight: FontWeight.bold),
                            ))),
                  ],
                )
              ]),
        ),
      ),
    );
  }
}
