import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ticket_booking/styles/app_styles.dart';
import 'package:ticket_booking/widgets/app_column_text_layout.dart';
import 'package:ticket_booking/widgets/app_layout_builder_widget.dart';
import 'package:ticket_booking/widgets/big_circle.dart';
import 'package:ticket_booking/widgets/big_dot.dart';
import 'package:ticket_booking/widgets/text_style_fourth.dart';
import 'package:ticket_booking/widgets/text_style_third.dart';

class Tickets extends StatelessWidget {
  const Tickets({
    super.key,
     required this.ticket, 
      this.wholeScreen=false,
     
     });
  final Map<String, dynamic> ticket;
  final bool wholeScreen;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width*0.80,
      height: 189,
      child: Container(
        margin:  EdgeInsets.only(right: wholeScreen==true?0:16),
        child: Column(
          children: [
            Container(
              
              padding: const EdgeInsets.all(16),
              decoration:  BoxDecoration(
                color: AppStyles.ticketBlue,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(21),
                   topRight: Radius.circular(21),
                ),
              ),
              child: Column(children: [
                // show destination and departure
                Row(children: [
                  TextStyleThird(text: ticket['from']['code'],),
                  Expanded(child: Container()),
                  const BigDot(),
                   Expanded(
                    child: Stack(
                      children: [
                         const SizedBox(
                          height: 24,
                          child: AppLayoutBuilderWidget(randomNumber: 4,),
                          ),
                          Center(
                            child: Transform.rotate(
                              angle: 1.5,
                              child: const Icon(
                                Icons.local_airport_rounded,color: Colors.white,),
                            ),)
                      ],
                      ),
                      ),
                  const BigDot(),
                  Expanded(child: Container()),
                     TextStyleThird(text: ticket['to']['code'],),
                ],),
                // show departure and destination with time
                Row(children: [
                   TextStyleFourth(text: ticket['from']['name'],),
                  Expanded(child: Container()),
                     TextStyleFourth(text: ticket['flying_time'],),
                   Expanded(child: Container()),
                    TextStyleFourth(text: ticket['to']['name'],),
                ],
                )
              ],
              ),
            ),

                Container(
                  color: AppStyles.ticketOrange,
                  child: const Row(
                    children: [
                    BigCircle(isRight: false,),

                   Expanded(child: AppLayoutBuilderWidget(randomNumber: 16,width: 6,)
                   ),

                     BigCircle(isRight: true,),
                  ],)
                ),

            Container(
              
              padding: const EdgeInsets.all(16),
              decoration:   BoxDecoration(
                color: AppStyles.ticketOrange,
                borderRadius:  const BorderRadius.only(
                  bottomLeft: Radius.circular(21),
                   bottomRight: Radius.circular(21),
                ),
              ),
              child:  Column(children: [
                // show destination and departure
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                 AppColumnTextLayout(topText: ticket['Date'],bottomText: 'DATE',alignment: CrossAxisAlignment.start,),
                 AppColumnTextLayout(topText: ticket['Departure time'],bottomText: 'Departure time',alignment: CrossAxisAlignment.center),
                 AppColumnTextLayout(topText: ticket['Number'].toString(),bottomText: 'N0.',alignment: CrossAxisAlignment.end),
                ],
                
                )
              ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}