import 'package:bechamp/shared/shared.dart';
import 'package:bechamp/views/Home/home.dart';
import 'package:flutter/material.dart';

class Congratulations extends StatelessWidget {
  const Congratulations({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          SizedBox(
            height: double.maxFinite,
            child: Image.asset(
              "assets/congratulations.png",
              fit: BoxFit.fitHeight,
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
                    "Congratulations !\n",
                    style: TextStyle(
                        color: Theme.of(context).primaryColor,
                        fontSize: 40,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "You can enjoy your app now",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white, fontSize: 17),
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
                              goTo(context, Home());
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
    );
  }
}
