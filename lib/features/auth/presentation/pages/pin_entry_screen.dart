import 'package:cash_mate/features/auth/presentation/widgets/avatar.dart';
import 'package:cash_mate/features/auth/presentation/widgets/circle_fill.dart';
import 'package:cash_mate/features/auth/presentation/widgets/numpad.dart';
import 'package:flutter/material.dart';

class PinEntryScreen extends StatelessWidget {
  final String name;
  const PinEntryScreen({
    super.key,
    required this.name,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          height: 80,
          width: MediaQuery.of(context).size.width,
        ),
        const Avatar(),
        const SizedBox(height: 20),
        Text(
          'Welcome back, $name!',
          style: TextStyle(
              fontFamily: 'Roboto',
              fontSize: 24,
              color: Color(0xff1E5368),
              fontWeight: FontWeight.w500),
        ),
        const SizedBox(height: 40),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleFill(),
            const SizedBox(width: 12),
            CircleFill(),
            const SizedBox(width: 12),
            CircleFill(),
            const SizedBox(width: 12),
            CircleFill(),
          ],
        ),
        const SizedBox(height: 40),
        Numpad(),
        const SizedBox(
          height: 40,
        ),
        Text(
          'Forgot Pin',
          style: TextStyle(
              color: Color(0xff1E5368),
              fontFamily: 'Roboto',
              fontSize: 16,
              fontWeight: FontWeight.w400),
        )
      ],
    );
  }
}
