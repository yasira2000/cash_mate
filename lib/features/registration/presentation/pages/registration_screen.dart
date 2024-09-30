import 'package:cash_mate/features/registration/presentation/widgets/custom_registration_form.dart';
import 'package:cash_mate/widgets/avatar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';

class RegistrationScreen extends StatelessWidget {
  const RegistrationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
      child: Container(
        width: MediaQuery.of(context).size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Row(
              children: [
                Text(
                  'Create Account',
                  style: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF1E5368)),
                ),
              ],
            ),
            const SizedBox(height: 30),
            Stack(
              children: [
                Avatar(
                  borderWidth: 160,
                  innerCircleWidth: 130,
                  outerCircleWidth: 145,
                ),
                Positioned(
                  top: 130,
                  right: 25,
                  child: Container(
                    width: 25,
                    height: 25,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      gradient: const LinearGradient(
                        begin: Alignment.bottomRight,
                        end: Alignment.topLeft,
                        colors: [
                          Color(0xff194557),
                          Color(0xff3795BD),
                        ],
                      ),
                    ),
                    child: Icon(
                      Icons.add,
                      color: Color(0xFFF7F7F8),
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(height: 25),
            // Column(
            //   crossAxisAlignment: CrossAxisAlignment.start,
            //   children: [
            //     Text(
            //       'Username',
            //       style: TextStyle(color: Color(0xFF1E5368), fontSize: 20),
            //     ),
            //     const SizedBox(height: 10),
            //     Expanded(
            //       flex: 10,
            //       child: Container(
            //         height: 60,
            //         decoration: BoxDecoration(
            //           borderRadius: BorderRadius.circular(10),
            //           color: Color(0xFFEBF1F5),
            //         ),
            //         child: Row(
            //           // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //           children: [
            //             SvgPicture.asset(
            //               'assets/svg/user.svg',
            //               width: 10,
            //               height: 10,
            //             )
            //           ],
            //         ),
            //       ),
            //     ),
            //   ],
            // )
            CustomRegistrationForm(),
          ],
        ),
      ),
    );
  }
}
