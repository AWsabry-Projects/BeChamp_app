import 'package:bechamp/shared/shared.dart';
import 'package:flutter/material.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: Directionality(
        textDirection: isEnglish ? TextDirection.ltr : TextDirection.rtl,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Stack(children: [
              Container(
                margin: const EdgeInsets.only(top: 60),
                padding: const EdgeInsets.all(20),
                width: double.maxFinite,
                height: MediaQuery.of(context).size.height / 1.3,
                decoration: BoxDecoration(
                  color: Colors.grey[700],
                  borderRadius: BorderRadius.circular(16.0),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: InkWell(
                          onTap: () {},
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  isEnglish
                                      ? "Profile information"
                                      : "معلومات شخصية",
                                  style:
                                      Theme.of(context).textTheme.displaySmall,
                                ),
                                Icon(
                                  Icons.arrow_forward_ios_outlined,
                                  color: Colors.white,
                                )
                              ])),
                    ),
                    Divider(
                      thickness: 1,
                      color: Colors.grey,
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
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                    Divider(
                      thickness: 1,
                      color: Colors.grey,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: InkWell(
                          onTap: () {
                            goTo(context, Loading());
                          },
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                  child: SizedBox(
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
                  )),
            ]),
          ],
        ),
      ),
    );
  }
}
