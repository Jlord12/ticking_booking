import 'package:flutter/material.dart';
import 'package:ticket_booking/utils/app_json.dart';
import 'package:ticket_booking/widgets/tickets.dart';

class AllTickets extends StatelessWidget {
  const AllTickets({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: [
          SingleChildScrollView(
            child: Column(children:ticketList.map((
               singleTicket)=> Container(
                margin:const  EdgeInsets.only(bottom: 16),
              child: Tickets(ticket: singleTicket,wholeScreen: true,))).toList(),
            ),
          )
        ],
      ),
    );
  }
}