import 'package:bechamp/models/HomeScreen%20Tiles/sectionsTiles.dart';
import 'package:bechamp/shared/shared.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, designSize: Size(428, 926));
    return Scaffold(
      extendBody: true,
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: double.maxFinite,
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("assets/homeBackground.png"))),
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding:
                    EdgeInsets.all(MediaQuery.of(context).size.height / 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Text(
                          "Hello",
                          style: TextStyle(
                            fontSize: 20.sp,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          "$userName",
                          style: TextStyle(
                              fontSize: 20.sp,
                              color: Colors.white,
                              fontFamily: "assets/Gilroy-ExtraBold.otf",
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    CircleAvatar()
                  ],
                ),
              ),
              SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 310.h,
                      child: RotatedBox(
                        quarterTurns: -1,
                        child: ListWheelScrollView(
                            diameterRatio:
                                RenderListWheelViewport.defaultDiameterRatio,
                            overAndUnderCenterOpacity: 0.3,
                            useMagnifier: true,
                            squeeze: 1.2,
                            magnification: 1.1,
                            itemExtent: 170,
                            children: const [
                              RotatedBox(
                                quarterTurns: 1,
                                child: SectionTile(
                                  imagePath: "assets/home2.png",
                                  title: "Nutrition Plan",
                                ),
                              ),
                              RotatedBox(
                                quarterTurns: 1,
                                child: SectionTile(
                                  title: "Workout & Nutrition Plan",
                                  imagePath: "assets/home1.png",
                                ),
                              ),
                              RotatedBox(
                                quarterTurns: 1,
                                child: SectionTile(
                                  imagePath: "assets/home3.png",
                                  title: "Workout Plan",
                                ),
                              )
                            ]),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 15,
                    ),
                    Padding(
                      padding: EdgeInsets.all(
                          MediaQuery.of(context).size.height / 100),
                      child: InkWell(
                          onTap: () {},
                          child: Image.asset("assets/startWithMe.png")),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 4,
              )
            ],
          ),
        ),
      ),
    );
  }
}
