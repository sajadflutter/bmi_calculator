import 'package:bmi_calcu/constants/constants.dart';
import 'package:flutter/material.dart';

class RightShaipe extends StatelessWidget {
  const RightShaipe({super.key, this.width = 0});
  final double width;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Text(
          'شاخص منفی',
          style: TextStyle(color: redbackground),
        ),
        Container(
          width: width,
          height: 40,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20),
            ),
            color: redbackground,
          ),
        ),
      ],
    );
  }
}
