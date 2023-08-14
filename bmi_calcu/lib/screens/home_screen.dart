import 'package:flutter/material.dart';
import 'package:bmi_calcu/constants/constants.dart';
import 'package:bmi_calcu/widgets/background_shape_left.dart';
import 'package:bmi_calcu/widgets/background_shape_right.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

final weightcontroller = TextEditingController();
final heightcontroller = TextEditingController();
double resultBMI = 0;
String resultText = '';
double widthgood = 100;
double widthbad = 100;

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          ' شما چقدر است؟BMI',
          style: TextStyle(
            color: black,
          ),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  width: 130,
                  child: TextField(
                    controller: weightcontroller,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: redbackground,
                    ),
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'وزن',
                      hintStyle:
                          TextStyle(color: redbackground.withOpacity(0.5)),
                    ),
                  ),
                ),
                Container(
                  width: 130,
                  child: TextField(
                    textAlign: TextAlign.center,
                    controller: heightcontroller,
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: redbackground,
                    ),
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'قد',
                      hintStyle:
                          TextStyle(color: redbackground.withOpacity(0.5)),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 60,
            ),
            InkWell(
              onTap: () {
                final weight = double.parse(weightcontroller.text);
                final height = double.parse(heightcontroller.text);
                setState(() {
                  resultBMI = weight / (height * height);
                  if (resultBMI > 25) {
                    widthbad = 270;
                    widthgood = 50;
                    resultText = 'شما اضافه وزن دارید';
                  } else if (resultBMI >= 18.5 && resultBMI <= 25) {
                    widthbad = 50;
                    widthgood = 270;
                    resultText = 'وزن شما نرمال است';
                  } else {
                    resultText = 'وزن شما کمتر از حد نرمال است';
                    widthbad = 10;
                    widthgood = 10;
                  }
                });
              },
              child: Text(
                '! محاسبه کن',
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Text(
              '${resultBMI.toStringAsFixed(2)}',
              style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 40,
            ),
            Text(
              '$resultText',
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: redbackground),
            ),
            SizedBox(
              height: 100,
            ),
            RightShaipe(
              width: widthbad,
            ),
            SizedBox(
              height: 15,
            ),
            LeftShape(
              width: widthgood,
            ),
          ],
        ),
      ),
    );
  }
}
