import 'package:bechamp/shared/shared.dart';
import 'package:bechamp/views/Profile%20Information/profileInformation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, designSize: Size(428, 926));
    return Scaffold(
      extendBody: true,
      body: Directionality(
        textDirection: isEnglish ? TextDirection.ltr : TextDirection.rtl,
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SizedBox(
                height: 200.h,
              ),
              Stack(children: [
                Container(
                  margin: const EdgeInsets.only(top: 60),
                  padding: EdgeInsets.symmetric(horizontal: 43.w),
                  width: double.maxFinite,
                  height: 676.h,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(38, 38, 38, 1),
                    borderRadius: BorderRadius.circular(16.0),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.all(15),
                        child: InkWell(
                            onTap: () {
                              goTo(context, ProfileInformation());
                            },
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    isEnglish
                                        ? "Profile information"
                                        : "معلومات شخصية",
                                    style: Theme.of(context)
                                        .textTheme
                                        .displaySmall,
                                  ),
                                  Icon(
                                    Icons.arrow_forward_ios_outlined,
                                    color: Colors.white,
                                  )
                                ])),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: InkWell(
                            onTap: () {
                              setState(() {
                                isEnglish = !isEnglish;
                              });
                            },
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                      isEnglish
                                          ? "Change Language"
                                          : "تغيير اللغه",
                                      style: Theme.of(context)
                                          .textTheme
                                          .displaySmall),
                                  Text(isEnglish ? "English" : "العربيه",
                                      style: Theme.of(context)
                                          .textTheme
                                          .displaySmall)
                                ])),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: InkWell(
                            onTap: () {
                              goTo(context, Loading());
                            },
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(isEnglish ? "Contact Us" : "تواصل معنا",
                                      style: Theme.of(context)
                                          .textTheme
                                          .displaySmall),
                                  Icon(
                                    Icons.arrow_forward_ios_outlined,
                                    color: Colors.white,
                                  )
                                ])),
                      ),
                    ],
                  ),
                ),
                Align(
                    alignment: Alignment.topCenter,
                    child: Column(
                      children: [
                        SizedBox(
                          child: CircleAvatar(
                            radius: 70.0,
                            backgroundColor: Colors.white,
                            child: InkWell(
                              onTap: () {},
                              child: CircleAvatar(
                                child: Align(
                                  alignment: Alignment.bottomRight,
                                  child: CircleAvatar(
                                    backgroundColor: Colors.white,
                                    radius: 22.0,
                                    child: Icon(
                                      Icons.camera_alt,
                                      size: 15.0,
                                      color: Color(0xFF404040),
                                    ),
                                  ),
                                ),
                                radius: 70.0,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 15.h,
                        ),
                        Text(
                          userName,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    )),
              ]),
            ],
          ),
        ),
      ),
    );
  }
}
