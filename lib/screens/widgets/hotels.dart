import 'package:flutter/material.dart';
import 'package:ticket_booking/res/media.dart';
import 'package:ticket_booking/styles/app_styles.dart';

class Hotels extends StatelessWidget {
  const Hotels({super.key, required this.hotel});
  final Map<String, dynamic> hotel;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.all(8.0),
      margin: const EdgeInsets.only(right: 16),
      height: 300,
      width:size.width*0.6 ,
      decoration: BoxDecoration(
        color: AppStyles.primaryColor,
        borderRadius: BorderRadius.circular(18),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        Container(
          height: 180,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
           image:  DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('assets/images/${hotel['image']}'),
            )
          ),
        ),
         const SizedBox(height: 10,),
        Padding(
          padding: const EdgeInsets.only(left: 15),
          child: Text('${hotel['place']}',
          style:TextStyle(
            color: AppStyles.khakiColor,
          )
          ),
        ),
        const SizedBox(height: 5,),
          Padding(
          padding: const EdgeInsets.only(left: 15),
          child: Text('${hotel['destination']}',
          style:const TextStyle(
            color: Colors.white,
          )
          ),
        ),
        const SizedBox( height: 5,),
         Padding(
          padding: const EdgeInsets.only(left: 15),
          child: Text('\$${hotel['price']}/Night',
          style:TextStyle(
            color: AppStyles.khakiColor,
            fontSize: 25,
          ),
          ),
        )
      ],),
    );
  }
}