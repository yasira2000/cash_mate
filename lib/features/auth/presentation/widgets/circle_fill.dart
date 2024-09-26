import 'package:flutter/material.dart';

class CircleFill extends StatelessWidget {
  final double borderWidth = 20.0;
  final double innerCircleWidth = 6.0;
  const CircleFill({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          width: borderWidth,
          height: borderWidth,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(borderWidth/2),
            border: Border.all(color: Color(0xff3795BD)),
            color: Color(0xff1E5368),
          ),
        ),
        Container(
          width: innerCircleWidth,
          height: innerCircleWidth,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(innerCircleWidth/2),
            color: Color(0xffF7F7F8),
          ),
        )
      ],
    );
  }
}
