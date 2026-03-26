import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class IconContent extends StatelessWidget {

  const IconContent({
    required this.icon,
    required this.label,
    super.key,
  });

  final FaIconData icon;
  final String label;

  static const labelTextStyle = TextStyle(
    fontSize: 18.0,
    color: Color(0xFF8d8E98),
  );

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        FaIcon(
          icon,
          size: 80,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          label,
          style: labelTextStyle,
        )
      ],
    );
  }
}