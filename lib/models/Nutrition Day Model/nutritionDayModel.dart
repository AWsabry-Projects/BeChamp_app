import 'package:bechamp/shared/shared.dart';
import 'package:flutter/material.dart';

class DayNutrition extends StatelessWidget {
  final int? day;
  final List<String>? breakFast, afterBreakFast, lunch, afterWorkout, dinner;

  const DayNutrition(
      {super.key,
      required this.day,
      this.breakFast,
      this.afterBreakFast,
      this.lunch,
      this.afterWorkout,
      this.dinner});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: isEnglish ? TextDirection.ltr : TextDirection.rtl,
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: Theme.of(context).primaryColor,
          child: Icon(
            Icons.done,
            color: Colors.black,
            size: 30,
          ),
        ),
        body: Stack(
          children: [
            Container(
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/nutritionBG.png"),
                      fit: BoxFit.cover)),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 30, left: 30, right: 30),
                  child: IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: isEnglish
                          ? Icon(
                              Icons.arrow_circle_left_rounded,
                              color: Colors.white,
                              size: 30,
                            )
                          : Icon(
                              Icons.arrow_circle_right_rounded,
                              color: Colors.white,
                              size: 30,
                            )),
                ),
                Text(
                  isEnglish ? "\t  Day $day" : "\t  اليوم $day",
                  style: const TextStyle(fontSize: 65, color: Colors.white),
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.9),
                      borderRadius: isEnglish
                          ? const BorderRadius.only(
                              topRight: Radius.circular(30))
                          : const BorderRadius.only(
                              topLeft: Radius.circular(30))),
                  height: MediaQuery.of(context).size.height / 1.4,
                  width: MediaQuery.of(context).size.width / 1.3,
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            isEnglish ? "Breakfast:" : "الفطور:",
                            style: Theme.of(context).textTheme.headlineMedium,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: List.generate(
                                  breakFast!.length,
                                  (index) => Text("${breakFast![index]}",
                                      style: Theme.of(context)
                                          .textTheme
                                          .displaySmall)),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            isEnglish ? "After Breakfast:" : "ما بعد الفطور:",
                            style: Theme.of(context).textTheme.headlineMedium,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: List.generate(
                                  afterBreakFast!.length,
                                  (index) => Text("${afterBreakFast![index]}",
                                      style: Theme.of(context)
                                          .textTheme
                                          .displaySmall)),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            isEnglish ? "Lunch:" : "الغداء:",
                            style: Theme.of(context).textTheme.headlineMedium,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: List.generate(
                                  lunch!.length,
                                  (index) => Text("${lunch![index]}",
                                      style: Theme.of(context)
                                          .textTheme
                                          .displaySmall)),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            isEnglish ? "After Workout:" : "ما بعد التمرين:",
                            style: Theme.of(context).textTheme.headlineMedium,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: List.generate(
                                  afterWorkout!.length,
                                  (index) => Text("${afterWorkout![index]}",
                                      style: Theme.of(context)
                                          .textTheme
                                          .displaySmall)),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            isEnglish ? "Dinner:" : "العشاء:",
                            style: Theme.of(context).textTheme.headlineMedium,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: List.generate(
                                  dinner!.length,
                                  (index) => Text("${dinner![index]}",
                                      style: Theme.of(context)
                                          .textTheme
                                          .displaySmall)),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
