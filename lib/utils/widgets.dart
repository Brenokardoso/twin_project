import 'package:app_twins/theme/theme_data_base.dart';
import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer({
    super.key,
    required this.borderColor,
    required this.labelText,
    this.listColorGradient,
  });

  final Color borderColor;
  final String labelText;
  final List<Colors>? listColorGradient;

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Container(
        height: 200,
        alignment: Alignment.center,
        padding: EdgeInsets.zero,
        margin: EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          border: Border.all(
            width: 2.5,
            color: borderColor,
            style: BorderStyle.solid,
          ),
          // gradient: LinearGradient(colors: []),
        ),
        child: Text(
          labelText,
          style: containerTextStyle,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}

Widget customButton() => FilledButton(
  onPressed: (() {}),
  onHover: (isHoverd) {},
  style: ButtonStyle(
    backgroundColor: WidgetStateProperty.all<Color>(Colors.transparent),
    padding: WidgetStateProperty.all<EdgeInsets>(EdgeInsets.all(20)),
    side: WidgetStateProperty.all(
      BorderSide(color: Colors.grey[800]!, style: BorderStyle.solid),
    ),
    alignment: Alignment.center,
  ),
  child: Text('Voltar', style: buttonTextStyle),
);
