import 'package:flutter/material.dart';
import 'package:ticket_booking/styles/app_styles.dart';

class AppTextIcon extends StatelessWidget {
  const AppTextIcon({
    super.key,
     required this.icon, 
     required this.text});
  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white
      ),
      child: Row(children: [
        Icon(
          icon ,color:  AppStyles.planeColor,
          ),
        SizedBox(width: 10,),
        Text(text),
      ],),
    );
  }
}