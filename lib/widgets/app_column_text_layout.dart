import 'package:flutter/material.dart';
import 'package:ticket_booking/widgets/text_style_third.dart';

class AppColumnTextLayout extends StatelessWidget {
  const AppColumnTextLayout({
    super.key,
     required this.topText,
     required this.bottomText,
      required this.alignment, 
     
      });
  final String topText, bottomText;
  final  CrossAxisAlignment alignment;


  @override
  Widget build(BuildContext context) {
    return  Column(
                     crossAxisAlignment: alignment,
                   children: [
                     TextStyleThird(text: topText),
                     TextStyleThird(text: bottomText),
                   ],
                 );
  }
}