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
                      fontSize: 40,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                    "Your answer will help us to create your personalized plan\n",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.white,
                      fontFamily: "bechampFont",
                    )),
                SizedBox(
                  height: 53.h,
                ),
                SizedBox(
                  height: 319.h,
                  width: 308.44.w,
                  child: VerticalPicker(
                      borderColor: Colors.green[600],
                      borderThickness: 6,
                      items: [
                        Text(
                          goals[0],
                          style: Theme.of(context).textTheme.displayMedium,
                        ),
                        Text(
                          goals[1],
                          style: Theme.of(context).textTheme.displayMedium,
                        ),
                        Text(
                          goals[2],
                          style: Theme.of(context).textTheme.displayMedium,
                        ),
                        Text(
                          goals[3],
                          style: Theme.of(context).textTheme.displayMedium,
                        ),
                        Text(
                          goals[4],
                          style: Theme.of(context).textTheme.displayMedium,
                        )
                      ],
                      onSelectedChanged: (goal) {
                        choosedGoal = goals[goal];
                      },
                      leftMargin: 40,
                      rightMargin: 40,
                      itemHeight: 100),
                ),
                SizedBox(
                  height: 80.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SizedBox(
                        height: 50,
                        child: BeChampButton(
                            onPressed: () {
                              submitGoal(); // it will take the choosed goal directle from the variable (choosedGoal) in components file
                              goTo(context, Congratulations());
                            },
                            child: Text(
                              "Next >",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
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
