import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Avatar extends StatelessWidget {
  double borderWidth = 116.0;
  double outerCircleWidth = 110.0;
  double innerCircleWidth = 100.0;

  Avatar({
    super.key,
    required this.borderWidth,
    required this.innerCircleWidth,
    required this.outerCircleWidth,
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
            borderRadius: BorderRadius.circular(borderWidth / 2),
            gradient: const LinearGradient(
              begin: Alignment.bottomRight,
              end: Alignment.topLeft,
              colors: [
                Color(0xff194557),
                Color(0xff3795BD),
              ],
            ),
          ),
        ),
        Container(
          width: outerCircleWidth,
          height: outerCircleWidth,
          decoration: BoxDecoration(
            color: Color(0xffF7F7F8),
            borderRadius: BorderRadius.circular(outerCircleWidth / 2),
          ),
        ),
        Container(
          width: innerCircleWidth,
          height: innerCircleWidth,
          decoration: BoxDecoration(
            color: Color(0xffC7DFEA),
            borderRadius: BorderRadius.circular(innerCircleWidth / 2),
          ),
        ),
        SvgPicture.asset('assets/svg/avatar_placeholder.svg')
      ],
    );
  }
}
