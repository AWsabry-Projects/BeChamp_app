import "package:bechamp/shared/shared.dart";
import "package:bechamp/views/Boarding/boarding.dart";
import "package:flutter/material.dart";

void main(List<String> args) {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Directionality(
        textDirection: isEnglish ? TextDirection.ltr : TextDirection.rtl,
        child: const Boarding()),
    theme: theme,
  ));
}
