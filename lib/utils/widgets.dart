import 'package:app_twins/theme/theme_data_base.dart';
import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  CustomContainer({
    super.key,
    required this.borderColor,
    required this.labelText,
    this.listColorGradient,
    this.colorContainer,
    this.indexColorRadient,
  });

  final Color borderColor;
  final Color? colorContainer;
  final String labelText;
  final List<Colors>? listColorGradient;
  final List<Color> defaultListGradient = [
    Color.fromARGB(255, 252, 161, 170),
    Color.fromARGB(255, 122, 204, 227),
    Color.fromARGB(255, 168, 216, 187),
  ];
  final Map<int, bool>? indexColorRadient;
  VoidCallback? onpressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        height: 200,
        alignment: Alignment.center,
        padding: EdgeInsets.zero,
        // margin: EdgeInsets.symmetric(horizontal: 20), // Se colocar um padding ou fazer um alinhamento geral refazer esse trem
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: defaultListGradient),
          borderRadius: BorderRadius.all(Radius.circular(30)),
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

Widget customButton({required String labelText, VoidCallback? onPressed}) =>
    Flexible(
      child: FilledButton(
        onPressed: onPressed,
        onHover: (isHoverd) {},
        style: ButtonStyle(
          backgroundColor: WidgetStateProperty.all<Color>(Colors.transparent),
          padding: WidgetStateProperty.all<EdgeInsets>(EdgeInsets.all(20)),
          side: WidgetStateProperty.all(
            BorderSide(color: Colors.grey[800]!, style: BorderStyle.solid),
          ),
          alignment: Alignment.center,
        ),
        child: Text(labelText, style: buttonTextStyle),
      ),
    );
