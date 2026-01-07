import 'package:app_twins/theme/theme_data_base.dart';
import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer({
    super.key,
    required this.borderColor,
    required this.labelText,
    required this.listColorGradient,
  });

  final Color borderColor;
  final String labelText;
  final List<Colors> listColorGradient;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.zero,
      margin: EdgeInsets.all(1),
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: []),
        border: Border.all(
          color: borderColor,
          style: BorderStyle.solid,
          strokeAlign: 1,
        ),
      ),
      child: Text(labelText, style: containerTextStyle),
    );
  }
}

TextEditingController textController = TextEditingController(text: "TEXT");
