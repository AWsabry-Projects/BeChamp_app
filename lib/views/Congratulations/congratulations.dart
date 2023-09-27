import 'package:bechamp/shared/shared.dart';
import 'package:bechamp/views/Home/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Congratulations extends StatelessWidget {
  const Congratulations({super.key});

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, designSize: Size(428, 926));

    return Scaffold(
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          SizedBox(
            width: double.maxFinite,
            height: double.maxFinite,
            child: Image.asset(
              "assets/congratulations.png",
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
                    "Congratulations !",
                    style: TextStyle(
                        color: Theme.of(context).primaryColor,
                        fontSize: 45,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "\nYou can enjoy your app now",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
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
                        width: 342.w,
                        child: BeChampButton(
                            onPressed: () {
                              goTo(context, Home());
                            },
                            child: Text(
                              "Get Started.",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 23,
                                  fontWeight: FontWeight.bold),
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
    );
  }
}
