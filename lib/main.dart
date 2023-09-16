import "package:bechamp/shared/shared.dart";
import 'package:bechamp/views/SignUp/signup.dart';
import "package:flutter/material.dart";
import "package:page_indicator/page_indicator.dart";

void main(List<String> args) {
  runApp(MaterialApp(
    home: Directionality(
        textDirection: isEnglish ? TextDirection.ltr : TextDirection.rtl,
        child: const Boarding()),
    theme: theme,
  ));
}

class Boarding extends StatelessWidget {
  const Boarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: PageIndicatorContainer(
      indicatorSelectorColor: Colors.white,
      indicatorColor: Colors.grey.shade600,
      length: 3,
      child: PageView(
        children: [
          Stack(
            alignment: Alignment.bottomCenter,
            children: [
              SizedBox(
                height: double.maxFinite,
                width: double.maxFinite,
                child: Image.asset(
                  "assets/boarding1.png",
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [
                  Colors.transparent,
                  Color.fromARGB(206, 0, 0, 0),
                  Color.fromARGB(225, 0, 0, 0),
                  Colors.black
                ], end: Alignment.bottomCenter, begin: Alignment.topCenter)),
                width: double.maxFinite,
                height: 600,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "Welcome to Fitness App\n",
                        style: TextStyle(
                            fontFamily: "bechampBold",
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "jdfhuid efeuyeui reiuryeuiryue wuyeow qioquo",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 18,
                          fontFamily: "bechampFont",
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height / 12,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: SizedBox(
                            height: 50,
                            width: double.maxFinite,
                            child: BeChampButton(
                                onPressed: () {
                                  goTo(context, SignUp());
                                },
                                child: Text(
                                  "Get Started.",
                                  style: Theme.of(context).textTheme.titleLarge,
                                ))),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height / 10,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Stack(
            alignment: Alignment.bottomCenter,
            children: [
              SizedBox(
                height: double.maxFinite,
                width: double.maxFinite,
                child: Image.asset(
                  "assets/boarding3.png",
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [
                  Colors.transparent,
                  Color.fromARGB(206, 0, 0, 0),
                  Color.fromARGB(225, 0, 0, 0),
                  Colors.black
                ], end: Alignment.bottomCenter, begin: Alignment.topCenter)),
                width: double.maxFinite,
                height: 600,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "Customized Workouts\n",
                        style: TextStyle(
                            fontFamily: "bechampBold",
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "jdfhuid efeuyeui reiuryeuiryue wuyeow qioquo",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 18,
                          fontFamily: "bechampFont",
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height / 12,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: SizedBox(
                            height: 50,
                            width: double.maxFinite,
                            child: BeChampButton(
                                onPressed: () {
                                  goTo(context, SignUp());
                                },
                                child: Text(
                                  "Get Started.",
                                  style: Theme.of(context).textTheme.titleLarge,
                                ))),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height / 10,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Stack(
            alignment: Alignment.bottomCenter,
            children: [
              SizedBox(
                height: double.maxFinite,
                width: double.maxFinite,
                child: Image.asset(
                  "assets/boarding2.png",
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                decoration: const BoxDecoration(
                    gradient: LinearGradient(colors: [
                  Colors.transparent,
                  Color.fromARGB(206, 0, 0, 0),
                  Color.fromARGB(225, 0, 0, 0),
                  Colors.black
                ], end: Alignment.bottomCenter, begin: Alignment.topCenter)),
                width: double.maxFinite,
                height: 600,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "Customized Nutrition Plan\n",
                        style: TextStyle(
                            fontFamily: "bechampBold",
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "jdfhuid efeuyeui reiuryeuiryue wuyeow qioquo",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 18,
                          fontFamily: "bechampFont",
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height / 12,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: SizedBox(
                            height: 50,
                            width: double.maxFinite,
                            child: BeChampButton(
                                onPressed: () {
                                  goTo(context, SignUp());
                                },
                                child: Text(
                                  "Get Started.",
                                  style: Theme.of(context).textTheme.titleLarge,
                                ))),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height / 10,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    ));
  }
}
