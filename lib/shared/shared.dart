import 'package:flutter/material.dart';

String userName = "TEST"; // user name from backend database
String userEmail = "test@google.com";
String phoneNumber = "01111111111";
bool isEnglish = true; // App Language
bool isSubscribed = false; // condition to know if user has paid or not

ThemeData theme = ThemeData(
    fontFamily: "bechampFont",
    primaryColor: Color.fromRGBO(206, 255, 0, 1), //app main color
    scaffoldBackgroundColor: Color.fromRGBO(24, 24, 24, 1),
    shadowColor: Color.fromARGB(255, 75, 192, 64),
    textTheme: TextTheme(
        headlineMedium: TextStyle(fontSize: 30, color: Colors.white),
        displayMedium: TextStyle(
            fontFamily: "bechampBold",
            color: Colors.white,
            fontSize: 34,
            fontWeight: FontWeight.bold), //for vertical Slider

        displaySmall: TextStyle(
            fontFamily: "bechampFont",
            fontSize: 20,
            color: Colors.white), //and normal text paragraphs
        titleLarge: TextStyle(
          color: Colors.black,
          fontSize: 25,
        ), //button text
        displayLarge: TextStyle(
          color: Colors.white,
          fontSize: 50,
        ) //Any titles or headers texts
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
                    borderRadius: BorderRadius.circular(30)))));
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

class BeChampAppBar extends AppBar {
  BeChampAppBar(BuildContext context) : super();

  PreferredSizeWidget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Image.asset(
            "assets/back.png",
            width: 30,
          )),
    );
  }
}
