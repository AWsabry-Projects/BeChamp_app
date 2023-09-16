import 'package:bechamp/models/HomeScreen%20Tiles/sectionsTiles.dart';
import 'package:bechamp/shared/shared.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: double.maxFinite,
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("assets/homeBackground.png"))),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.all(35.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Hello,\n$userName",
                    style: Theme.of(context).textTheme.displaySmall,
                  ),
                  CircleAvatar()
                ],
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height / 3,
                  child: PageView(
                    controller:
                        PageController(viewportFraction: 0.6, initialPage: 1),
                    children: [
                      SectionTile(
                        imagePath: "assets/home2.png",
                        title: "Nutrition Plan",
                      ),
                      SectionTile(
                        title: "Workout & Nutrition Plan",
                        imagePath: "assets/home1.png",
                      ),
                      SectionTile(
                        imagePath: "assets/home3.png",
                        title: "Workout Plan",
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                SizedBox(height: 150, width: 400, child: Card())
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 4,
            )
          ],
        ),
      ),
    );
  }
}
