import 'package:cash_mate/features/auth/presentation/pages/pin_entry_screen.dart';
import 'package:cash_mate/features/registration/presentation/pages/registration_screen.dart';
import 'package:cash_mate/widgets/bottom_navigation_bar.dart';
import 'package:flutter/material.dart';

class MyAppView extends StatelessWidget {
  const MyAppView({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Cash Mate",
      home: Scaffold(
        backgroundColor: Color(0xFFF7F7F8),
        // body: Padding(
        //   padding: const EdgeInsets.all(8.0),
        //   child: PinEntryScreen(name: 'Lishani'),
        // ),

        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SafeArea(child: RegistrationScreen()),
        ),
        // bottomNavigationBar: CustomBottomNavigationBar(),
      ),
    );
  }
}
