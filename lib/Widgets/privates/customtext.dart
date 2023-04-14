//import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  const CustomText({ 
    super.key, this.countText, this.title, this.isVerticalDivider = true,
  });
final String? countText,title;
final bool isVerticalDivider;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          // margin: EdgeInsets.symmetric(horizontal: 3),
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
               Text(countText??'', style:const TextStyle(fontSize: 20,),),
              SizedBox(
             width: 8,
             child:  Divider(
               thickness: 2,
               color: Colors.black,
             ),
           ),
           Text( title??'',style: TextStyle(fontWeight: FontWeight.bold),),
           
        
            ],
          ),
        ),
if(isVerticalDivider)
          Container(
                  height: 50,
                  child: const VerticalDivider(
                        width: 10,
                        thickness: 4,
                        color: Colors.black,
                  ),
                )
      ],
    );
  }
}