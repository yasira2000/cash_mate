import 'package:cash_mate/features/auth/presentation/pages/pin_entry_screen.dart';
import 'package:flutter/material.dart';

class MyAppView extends StatelessWidget {
  const MyAppView({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Cash Mate",
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: PinEntryScreen(name: 'Lishani'),
        ),
      ),
    );
  }
}
