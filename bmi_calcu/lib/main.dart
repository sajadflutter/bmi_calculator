import 'package:bmi_calcu/screens/home_screen.dart';
import 'package:bmi_calcu/screens/test_screen.dart';
import 'package:bmi_calcu/widgets/background_shape_left.dart';
import 'package:bmi_calcu/widgets/background_shape_right.dart';
import 'package:flutter/material.dart';
import 'constants/constants.dart';

void main() {
  runApp(Application());
}

class Application extends StatefulWidget {
  const Application({super.key});

  @override
  State<Application> createState() => _ApplicationState();
}

class _ApplicationState extends State<Application> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(fontFamily: 'dana'),
        debugShowCheckedModeBanner: false,
        home: HomeScreen());
  }
}
