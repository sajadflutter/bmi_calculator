import 'package:bmi_calcu/constants/constants.dart';
import 'package:flutter/material.dart';

class LeftShape extends StatelessWidget {
  const LeftShape({super.key, this.width = 0});
  final double width;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          width: width,
          height: 40,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(20),
            ),
            color: greenbackground,
          ),
        ),
        Text(
          'شاخص مثبت',
          style: TextStyle(color: greenbackground),
        ),
      ],
    );
  }
}
