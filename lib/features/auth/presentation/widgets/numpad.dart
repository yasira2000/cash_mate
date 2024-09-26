import 'package:cash_mate/features/auth/presentation/widgets/num_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';

class Numpad extends StatelessWidget {
  const Numpad({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
              child: NumButton(number: '1'),
            ),
            Padding(
                padding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
                child: NumButton(number: '2')),
            Padding(
                padding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
                child: NumButton(number: '3')),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
              child: NumButton(number: '4'),
            ),
            Padding(
                padding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
                child: NumButton(number: '5')),
            Padding(
                padding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
                child: NumButton(number: '6')),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
              child: NumButton(number: '7'),
            ),
            Padding(
                padding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
                child: NumButton(number: '8')),
            Padding(
                padding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
                child: NumButton(number: '9')),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
              child: SizedBox(
                height: 70,
                width: 70,
              ),
            ),
            Padding(
                padding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
                child: NumButton(number: '0')),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
              child: Container(
                width: 70,
                height: 70,
                child: SvgPicture.asset(
                  'assets/svg/delete.svg',
                  fit: BoxFit.none,
                  width: 48,
                  height: 48,
                ),
              ),
            )
          ],
        )
      ],
    );
  }
}
