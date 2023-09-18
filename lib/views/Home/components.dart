import 'package:bechamp/views/Dashboard/dashboard.dart';
import 'package:bechamp/views/Nutrition%20Page/nutritionPage.dart';
import 'package:bechamp/views/Settings%20View/settings.dart';
import 'package:bechamp/views/Workouts/Workouts%20Screen%201/weeksPage.dart';
import 'package:flutter/material.dart';

int currentIndex = 0;
List<Widget> pages = const [
  Dashboard(),
  WeeksScreen(),
  NutritionScreen(),
  Settings()
];
