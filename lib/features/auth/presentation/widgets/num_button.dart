import 'package:flutter/material.dart';

class NumButton extends StatelessWidget {
  final String number;

  const NumButton({super.key, required this.number});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          width: 70,
          height: 70,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(35),
              color: Color(0xffC7DFEA),
              boxShadow: [
                BoxShadow(
                  color: Color(0x33282828),
                  offset: const Offset(
                    0.0,
                    3.0,
                  ),
                  blurRadius: 5.0,
                  spreadRadius: 0.5,
                ),
              ]),
        ),
        Text(
          number,
          style: TextStyle(
            color: Color(0xff1E5368),
            fontFamily: 'Roboto',
            fontSize: 20,
            fontWeight: FontWeight.w500
          ),
        )
      ],
    );
  }
}
