import 'package:flutter/material.dart';

class AppLayoutBuilderWidget extends StatelessWidget {
  const AppLayoutBuilderWidget({
    super.key,
     required this.randomNumber, 
      this.width = 3,
     });
  final int randomNumber;
  final double width;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context,BoxConstraints Constraints){
        print('${(Constraints.constrainWidth()/randomNumber).floor()}');
        return Flex(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          direction: Axis.horizontal,
          children: 
            List.generate((Constraints.constrainWidth()/randomNumber).floor(), 
            (index){
              return  SizedBox(
                width: width,
                height: 1,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                  ),
              );
            }
            ),
          
          );
      }
      
      );
  }
}