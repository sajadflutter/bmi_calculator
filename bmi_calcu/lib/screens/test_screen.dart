import 'package:bmi_calcu/constants/constants.dart';
import 'package:flutter/material.dart';

class TapTest extends StatefulWidget {
  const TapTest({super.key});

  @override
  State<TapTest> createState() => _TapTestState();
}

int counter = 0;

class _TapTestState extends State<TapTest> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              Text(
                '$counter',
                style: TextStyle(fontSize: 40),
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    counter = counter + 1;
                  });
                },
                child: Text(''),
              ),
              InkWell(
                onTap: () => setState(() {
                  counter = counter - 1;
                }),
                child: Container(
                  width: 200,
                  height: 200,
                  child: Text('click'),
                ),
              ),
              GestureDetector(
                onTap: () => setState(() {
                  counter = counter - 1;
                }),
                child: Container(
                  width: 200,
                  height: 200,
                  child: Text('click'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
