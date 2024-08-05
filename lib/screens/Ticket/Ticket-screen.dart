import 'package:flutter/material.dart';
import 'package:ticket_booking/styles/app_styles.dart';

class TicketView extends StatelessWidget {
  const TicketView({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppStyles.bgColor,
      body: ListView(
        padding:const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
        children: [
          const SizedBox(height: 40,),
          const Text('Tickets',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
         const SizedBox(height: 15,),
         Container(
          decoration: BoxDecoration(
            color: const Color(0xfff4f6fd),
            borderRadius: BorderRadius.circular(60),
          ),
          child: Row(children: [
            Container(
              width: size.width*0.4,
              padding: const EdgeInsets.symmetric(vertical: 7),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.horizontal(left: Radius.circular(20)),
              ),
              child: const Center(child: Text('Upcoming')),
            ),
            Container(
              width: size.width*0.4,
              padding: const EdgeInsets.symmetric(vertical: 7),
              decoration: const BoxDecoration(borderRadius: BorderRadius.horizontal(right: Radius.circular(20)),),
              child: const Center(child: Text('Previous')),
            )
          ],),
         ),
        ],
      ),
    );
  }
}