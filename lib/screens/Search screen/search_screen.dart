import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ticket_booking/res/media.dart';
import 'package:ticket_booking/screens/Search%20screen/widget/app_ticket_tab.dart';
import 'package:ticket_booking/screens/widgets/app_text_icon.dart';
import 'package:ticket_booking/screens/widgets/find_ticket.dart';
import 'package:ticket_booking/styles/app_styles.dart';
import 'package:ticket_booking/widgets/app_double_text.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return  Scaffold(
      backgroundColor: AppStyles.bgColor,
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 25,vertical: 20),
        children: [
          const SizedBox(height: 30,),
          Text('What are you looking for',
          style: AppStyles.headLineStyle1,
          ),
          const SizedBox(height: 35,),
          const AppTicketTab(),
          const SizedBox(height: 20,),
          const AppTextIcon( text: 'Departure', icon: Icons.flight_takeoff_rounded,),
          const SizedBox(height: 20,),
          const AppTextIcon( text: 'Arrival', icon: Icons.flight_land_rounded,),
          const SizedBox(height: 20,),
          const FindTicket(),
           const SizedBox(height: 20,),
           AppDoubleText(bigText: 'Upcoming flights',smallText: 'Hotels',func: (){},),
            const SizedBox(height: 20,),
           Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            Container(
              padding:const EdgeInsets.symmetric(horizontal: 15,vertical: 15),
              width: size.width*0.44,
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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              Container(
                height: 210,
                width: size.width*0.40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: const Color(0xff3a8888)
                ),
                child: const Column(
                  children: [
                    SizedBox(height: 20,),
                  Text('Dsicount for survey',style: TextStyle(color: Colors.white),),
                    SizedBox(height: 20,),
                   Text('Take the survey about our services and get discount',style: TextStyle(color: Colors.white)),
                ],),
              ),
            ],)
           ],),
        ],
      ),
    );
  }
}