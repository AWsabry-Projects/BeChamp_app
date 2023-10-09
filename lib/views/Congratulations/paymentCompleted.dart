import 'package:bechamp/shared/shared.dart';
import 'package:bechamp/views/Home/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PaymentCongratulations extends StatelessWidget {
  const PaymentCongratulations({super.key});

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
              "assets/IMG_3444.png",
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
                        color: Colors.white,
                        fontSize: 45.sp,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "\nPayment Success",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.sp,
                      fontFamily: "bechampFont",
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 12,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: SizedBox(
                        height: 63.h,
                        width: 342.w,
                        child: BeChampButton(
                            onPressed: () {},
                            child: Text(
                              "Back to home page",
                              style: TextStyle(
                                  shadows: [
                                    Shadow(color: Colors.black, blurRadius: 10)
                                  ],
                                  color: Colors.white,
                                  fontSize: 25.sp,
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
