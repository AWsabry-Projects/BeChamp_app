import 'package:bechamp/shared/shared.dart';
import 'package:flutter/material.dart';

class ProfileInformation extends StatelessWidget {
  const ProfileInformation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BeChampAppBar(context).build(context),
      extendBody: true,
      body: Directionality(
        textDirection: isEnglish ? TextDirection.ltr : TextDirection.rtl,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Center(
                  child: Text(
                "Edit Profile\n",
                style: Theme.of(context).textTheme.displayLarge,
              )),
              Stack(children: [
                Container(
                  margin: const EdgeInsets.only(top: 60),
                  padding: const EdgeInsets.all(20),
                  width: double.maxFinite,
                  height: MediaQuery.of(context).size.height / 1.2,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(38, 38, 38, 1),
                    borderRadius: BorderRadius.circular(16.0),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "     Name",
                                  style: TextStyle(
                                      fontSize: 15, color: Colors.white),
                                ),
                                Container(
                                  width: double.maxFinite,
                                  child: Center(
                                      child: Text(
                                    userName,
                                    style: TextStyle(
                                        fontSize: 17,
                                        color:
                                            Color.fromRGBO(110, 110, 110, 1)),
                                  )),
                                  height:
                                      MediaQuery.of(context).size.height / 15,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      border: Border.all(
                                          width: 0.5,
                                          color:
                                              Theme.of(context).primaryColor)),
                                )
                              ])),
                      Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "     E-Mail",
                                  style: TextStyle(
                                      fontSize: 15, color: Colors.white),
                                ),
                                Container(
                                  width: double.maxFinite,
                                  child: Center(
                                      child: Text(
                                    userEmail,
                                    style: TextStyle(
                                        fontSize: 17,
                                        color:
                                            Color.fromRGBO(110, 110, 110, 1)),
                                  )),
                                  height:
                                      MediaQuery.of(context).size.height / 15,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      border: Border.all(
                                          width: 0.5,
                                          color:
                                              Theme.of(context).primaryColor)),
                                )
                              ])),
                      Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "     Phone no.",
                                  style: TextStyle(
                                      fontSize: 15, color: Colors.white),
                                ),
                                Container(
                                  width: double.maxFinite,
                                  child: Center(
                                      child: Text(
                                    phoneNumber,
                                    style: TextStyle(
                                        fontSize: 17,
                                        color:
                                            Color.fromRGBO(110, 110, 110, 1)),
                                  )),
                                  height:
                                      MediaQuery.of(context).size.height / 15,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      border: Border.all(
                                          width: 0.5,
                                          color:
                                              Theme.of(context).primaryColor)),
                                )
                              ])),
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
      ),
    );
  }
}
