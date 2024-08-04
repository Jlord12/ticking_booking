import 'package:flutter/material.dart';

class AppTicketTab extends StatelessWidget {
  const AppTicketTab({super.key});

  @override
  Widget build(BuildContext context) {
    final size =MediaQuery.of(context).size;
    return Container(
      decoration:  BoxDecoration(
        borderRadius: BorderRadius.circular(60),
        color: const Color(0xfff4f6fd)
      ),
      child: Row(
        children: [
       
          AppTabs(tabText: 'Airline Tickets',),
          AppTabs(tabText: '  Hotels',tabBorder: true,tabCor: true,),
      ],),
    );
  }
}



class AppTabs extends StatelessWidget {
  const AppTabs({
    super.key,
      this.tabText='', 
      this.tabBorder=false,
        this.tabCor=false, 
       
     });
  final String tabText;
  final bool tabBorder;
  final bool tabCor;

  @override
  Widget build(BuildContext context) {
    final size =MediaQuery.of(context).size;
    return  Container(
          width: size.width*0.4,
          padding: const EdgeInsets.symmetric(vertical: 7),
          decoration: BoxDecoration(
            color:tabCor==false? Colors.white:Colors.transparent,
            borderRadius:tabBorder==false? const BorderRadius.horizontal(left: Radius.circular(60)): const BorderRadius.horizontal(right: Radius.circular(60),
            ),
          ),
          child:  Center(child: Text(tabText))
          );
  }
}