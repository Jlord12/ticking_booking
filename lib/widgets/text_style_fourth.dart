import 'package:flutter/material.dart';
import 'package:ticket_booking/styles/app_styles.dart';

class TextStyleFourth extends StatelessWidget {
  const TextStyleFourth({
    super.key,
     required this.text
     });
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
    style: AppStyles.textStyle.copyWith(color: Colors.white),
    );
  }
}