import 'package:flutter/material.dart';
import 'package:ticket_booking/res/media.dart';

class TicketPromotion extends StatelessWidget {
  const TicketPromotion({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            Container(
              padding:const EdgeInsets.symmetric(horizontal: 15,vertical: 15),
              width: size.width*0.44,
              height: 400,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow:const [
                   BoxShadow(
                    color: Colors.grey,
                  blurRadius: 2,
                  spreadRadius: 3,
                  ),
                ]
              ),
              child: Column(children: [
                Container(
                  height: 190,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: const DecorationImage(
                    fit: BoxFit.cover,
                      image:AssetImage(AppMedia.plansit)
                      ),
                  ),
                ),
               const SizedBox(height: 20,),
               const Text('20% discount on the early booking of this flight, Dont miss')
              ],),
              
            ),
            Column(
              children: [
                Stack(
                  children: [
                     Container(
                  padding: const EdgeInsets.symmetric(horizontal: 12,vertical: 12),
                  height: 210,
                  width: size.width*0.40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: const Color(0xff3a8888)
                  ),
                
                  child: const Column(
                    children: [
                      SizedBox(height: 20,),
                    Text('Dsicount for survey',style: TextStyle(color: Colors.white,fontSize: 25),),
                      SizedBox(height: 20,),
                     Text('Take the survey about our services and get discount',style: TextStyle(color: Colors.white)),
                  ],),
                ),
                Positioned(
                 right: -45,
                 top: -40,
                  child: Container(
                    padding:const EdgeInsets.all(30),
                              decoration: BoxDecoration(
                               border: Border.all(
                                     width:  18,
                                     color:const Color.fromARGB(214, 54, 7, 226),
                               ),
                               shape: BoxShape.circle,
                              ),
                  ),
                )
                  ],
                ),
               const SizedBox(height: 15,),
               Container(
                height: 190,
                width: size.width*0.4,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: const Color(0xffec6545),
                ),
                child: const Column(children: [
                  Text('Take love',style: TextStyle(fontSize: 25,color: Colors.white),),
                ],),
               ),
              ],
            ),
           
           ],);
  }
}