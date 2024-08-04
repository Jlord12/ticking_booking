import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ticket_booking/res/media.dart';
import 'package:ticket_booking/screens/all_tickets.dart';
import 'package:ticket_booking/screens/widgets/hotels.dart';
import 'package:ticket_booking/styles/app_styles.dart';
import 'package:ticket_booking/utils/app_json.dart';
import 'package:ticket_booking/widgets/app_double_text.dart';
import 'package:ticket_booking/widgets/tickets.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppStyles.bgColor,
      body: ListView(
        children: [
          SizedBox(
            height: size.height * 0.07,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Good morning', style: AppStyles.headLineStyle3),
                        SizedBox(
                          height: size.height * 0.01,
                        ),
                        Text('Book Tickets', style: AppStyles.headLineStyle1),
                      ],
                    ),
                    SizedBox(
                      height: size.height * 0.12,
                    ),
                    Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: const DecorationImage(
                          image: AssetImage(AppMedia.logo),
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: size.height * 0.01,
                ),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                  decoration: BoxDecoration(
                    color: const Color(0xffff4f6fd),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: const Row(
                    children: [
                      Icon(Icons.search),
                      Text('Search icon'),
                    ],
                  ),
                ),
                SizedBox(
                  height: size.height * 0.05,
                ),
                 AppDoubleText(
                  bigText: 'Upcoming flights',
                  smallText: 'View all',
                  func: ()=> Navigator.pushNamed(context, 'all_ticket'),
                ),
                SizedBox(
                  height: size.height * 0.02,
                ),
                 SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: ticketList.map((singleTicket) =>  Tickets(ticket: singleTicket,)).toList(),
                    )
                  ),
                   AppDoubleText(
                  bigText: 'Hotels',
                  smallText: 'View all',
                  func: (){},
                ),

               
                SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children:hotelList.take(2).map((singleHotel)=>  Hotels(hotel: singleHotel,)).toList(),
                )),
              ],
            ),
          )
        ],
      ),
    );
  }
}
