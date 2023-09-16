import 'package:bechamp/views/Adding%20Goals/addingGoals.dart';
import 'package:bechamp/views/Dashboard/dashboard.dart';
import 'package:bechamp/views/Settings%20View/settings.dart';
import 'package:bechamp/views/SignUp/signup.dart';
import 'package:flutter/material.dart';

int currentIndex = 0;
List<Widget> pages = [Dashboard(), SignUp(), AddingGoals(), Settings()];
