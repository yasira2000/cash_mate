import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class FormSection extends StatelessWidget {
  final String label;
  final String hintText;
  final String svgPath;
  final String errorMsg;

  const FormSection({
    super.key,
    required this.label,
    required this.hintText,
    required this.svgPath,
    required this.errorMsg,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(
            color: Color(0xFF1E5368),
            fontSize: 20,
          ),
        ),
        const SizedBox(height: 10),
        Container(
          height: 60,
          padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
          decoration: BoxDecoration(
              color: Color(0xffEBF1F5),
              borderRadius: BorderRadius.circular(10)),
          child: Row(
            children: [
              Expanded(
                child: TextFormField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: hintText,
                    hintStyle: TextStyle(
                      color: Color(0xffA3CDDF),
                    ),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return errorMsg;
                    }
                    return null;
                  },
                ),
              ),
              Container(
                child: SvgPicture.asset(
                  svgPath,
                  width: 30,
                  height: 30,
                  color: Color(0xff1E5368),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
