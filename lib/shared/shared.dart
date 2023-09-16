import 'package:flutter/material.dart';

String userName = "TEST"; // user name from backend database
bool isEnglish = true; // App Language
bool isSubscribed = false; // condition to know if user has paid or not

ThemeData theme = ThemeData(
    primaryColor: Color.fromRGBO(206, 255, 0, 1), //app main color
    scaffoldBackgroundColor: Colors.grey[900],
    shadowColor: Color.fromARGB(255, 75, 192, 64),
    textTheme: TextTheme(
        displayMedium: TextStyle(
            color: Colors.white,
            fontSize: 34,
            fontWeight: FontWeight.bold), //for vertical Slider
        displaySmall: TextStyle(
            fontSize: 20, color: Colors.white), //and normal text paragraphs
        titleLarge: TextStyle(
            color: Colors.black,
            fontSize: 25,
            fontWeight: FontWeight.bold), //button text
        displayLarge: TextStyle(
            color: Colors.white,
            fontSize: 45,
            fontWeight: FontWeight.bold) //Any titles or headers texts
        ),
    appBarTheme: const AppBarTheme(
      color: Colors.transparent,
      elevation: 0,
    ));

class BeChampButton extends ElevatedButton {
  @override
  final void Function()? onPressed;
  @override
  final Widget? child;
  BeChampButton({required this.onPressed, required this.child})
      : super(
            onPressed: onPressed,
            child: child,
            style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all(Color.fromRGBO(206, 255, 0, 1)),
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)))));
}

void goTo(BuildContext context, Widget newRoute) =>
    Navigator.push(context, MaterialPageRoute(builder: (context) => newRoute));

class Loading extends StatelessWidget {
  const Loading({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      "assets/loading.png",
      fit: BoxFit.cover,
    );
  }
}
