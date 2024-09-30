import 'package:cash_mate/features/registration/presentation/widgets/form_section.dart';
import 'package:flutter/material.dart';

// Define a custom Form widget.
class CustomRegistrationForm extends StatefulWidget {
  const CustomRegistrationForm({super.key});

  @override
  CustomRegistrationFormState createState() {
    return CustomRegistrationFormState();
  }
}

class CustomRegistrationFormState extends State<CustomRegistrationForm> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          FormSection(
            label: 'Username',
            hintText: 'Enter Username',
            svgPath: 'assets/svg/person.svg',
            errorMsg: 'Please enter username',
          ),
          SizedBox(height: 20),
          FormSection(
            label: "Enter Pin",
            hintText: 'Enter your pin',
            svgPath: 'assets/svg/visibility_off.svg',
            errorMsg: 'Please use numbers only',
          ),
          SizedBox(height: 20),
          FormSection(
            label: "Confirm Pin",
            hintText: 'Enter your pin again',
            svgPath: 'assets/svg/visibility_off.svg',
            errorMsg: 'Please use numbers only',
          ),
          const SizedBox(height: 40),
          GestureDetector(
            onTap: () {
              // Validate returns true if the form is valid, or false otherwise.
              if (_formKey.currentState!.validate()) {
                // If the form is valid, display a snackbar. In the real world,
                // you'd often call a server or save the information in a database.
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Processing Data')),
                );
              }
            },
            child: Container(
              width: 150,
              height: 50,
              decoration: BoxDecoration(
                color: Color(0xFF3795BD),
                borderRadius: BorderRadius.circular(20)
                
              ),
              child: Center(
                child: Text(
                  'Create',
                  style: TextStyle(
                    color: Color(0xFFF7F7F8),
                    fontSize: 20,
                  ),
                ),
              ),
            ),
          )

          // ElevatedButton(
          //   style: ButtonStyle(backgroundColor: Color(value)),
          //   onPressed: () {
          //     // Validate returns true if the form is valid, or false otherwise.
          //     if (_formKey.currentState!.validate()) {
          //       // If the form is valid, display a snackbar. In the real world,
          //       // you'd often call a server or save the information in a database.
          //       ScaffoldMessenger.of(context).showSnackBar(
          //         const SnackBar(content: Text('Processing Data')),
          //       );
          //     }
          //   },
          //   child: const Text('Create'),
          // ),
        ],
      ),
    );
  }
}
