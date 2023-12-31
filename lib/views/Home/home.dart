import 'package:bechamp/models/Icons%20Model/beChampIcons.dart';
import 'package:bechamp/shared/shared.dart';
import 'package:bechamp/views/Adding%20Self%20Photos/addSelfPhotos.dart';
import 'package:bechamp/views/Home/components.dart';

import 'package:flutter/material.dart';
import 'package:flutter_snake_navigationbar/flutter_snake_navigationbar.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: isEnglish ? TextDirection.ltr : TextDirection.rtl,
      child: Scaffold(
          floatingActionButton: FloatingActionButton(
              onPressed: () {
                goTo(context, AddSelfPhotos());
              },
              backgroundColor: Theme.of(context).primaryColor,
              child: Image.asset("assets/arrow.png")),
          extendBody: true,
          body: pages[currentIndex],
          bottomNavigationBar: SnakeNavigationBar.color(
              elevation: 5,
              unselectedItemColor: Colors.grey,
              selectedItemColor: Theme.of(context).primaryColor,
              backgroundColor: Color.fromRGBO(45, 45, 45, 1),
              snakeShape: SnakeShape.indicator,
              snakeViewColor: Color.fromRGBO(112, 255, 4, 1),
              padding: const EdgeInsets.all(20),
              behaviour: SnakeBarBehaviour.floating,
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(25))),
              onTap: (index) {
                setState(() {
                  currentIndex = index;
                });
              },
              currentIndex: currentIndex,
              items: [
                BottomNavigationBarItem(
                    icon: BeChampIcon(
                        active: "assets/homeActive.png",
                        unActive: "assets/home.png",
                        isActive: currentIndex == 0 ? true : false),
                    label: 'Home'),
                BottomNavigationBarItem(
                    icon: BeChampIcon(
                        active: "assets/dumbellActive.png",
                        unActive: "assets/dumbell.png",
                        isActive: currentIndex == 1 ? true : false),
                    label: "Workout"),
                BottomNavigationBarItem(
                    icon: BeChampIcon(
                        active: "assets/nutritionActive.png",
                        unActive: "assets/nutrition.png",
                        isActive: currentIndex == 2 ? true : false),
                    label: 'Nutrition'),
                BottomNavigationBarItem(
                    icon: currentIndex == 3
                        ? Icon(
                            Icons.settings,
                            color: Color.fromRGBO(112, 255, 4, 1),
                          )
                        : Icon(
                            Icons.settings,
                            color: Colors.grey.shade600,
                          ),
                    label: 'Settings'),
              ])),
    );
  }
}
