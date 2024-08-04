import 'package:flutter/material.dart';

class FindTicket extends StatelessWidget {
  const FindTicket({super.key, });
  

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12,vertical: 12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: const Color(0xd91130ce),
      ),
      child: Container(
        child: const Center(child: Text('find Tickets',style: TextStyle(color: Colors.white),)),
      ),
    );
  }
}