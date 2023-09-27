import 'package:bechamp/shared/shared.dart';
import 'package:bechamp/views/SignUp/signup.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:page_indicator/page_indicator.dart';

class Boarding extends StatelessWidget {
  const Boarding({super.key});

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, designSize: Size(428, 926));
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
                  padding: EdgeInsets.all(43.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "Welcome to Fitness App\n",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "jdfhuid efeuyeui reiuryeuiryue wuyehsjsh us ui sig ysf usysft7dsf yuds fow qioquo",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 17,
                          fontFamily: "bechampFont",
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height / 12,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: SizedBox(
                            height: 52.h,
                            width: 324.w,
                            child: BeChampButton(
                                onPressed: () {
                                  goTo(context, SignUp());
                                },
                                child: Text(
                                  "Get Started.",
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                ))),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height / 9.9,
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
                  padding: EdgeInsets.all(43.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "Customized Workouts\n",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "jdfhuid efeuyeui reiuryeuiryue wuyehsjsh us ui sig ysf usysft7dsf yuds fow qioquo",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 17,
                          fontFamily: "bechampFont",
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height / 12,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: SizedBox(
                            height: 52.h,
                            width: 324.w,
                            child: BeChampButton(
                                onPressed: () {
                                  goTo(context, SignUp());
                                },
                                child: Text(
                                  "Get Started.",
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                ))),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height / 9.9,
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
                  padding: EdgeInsets.all(43.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "Customized Nutrition plan\n",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "jdfhuid efeuyeui reiuryeuiryue wuyehsjsh us ui sig ysf usysft7dsf yuds fow qioquo",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 17,
                          fontFamily: "bechampFont",
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height / 12,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: SizedBox(
                            height: 52.h,
                            width: 324.w,
                            child: BeChampButton(
                                onPressed: () {
                                  goTo(context, SignUp());
                                },
                                child: Text(
                                  "Get Started.",
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                ))),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height / 9.9,
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
