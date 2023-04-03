
//import 'package:flutter/cupertino.dart';
//import 'dart:html';

import 'package:first_project/Screens/auth/signup.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,required this.buttonText,  required this.backgroundColor, this.onTap,
  });
  final String buttonText;
final Color backgroundColor;
final Function()? onTap;



  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onTap,
         style: ButtonStyle(
       padding:  MaterialStateProperty.all(EdgeInsets.zero),
          backgroundColor: MaterialStateProperty.all (backgroundColor),
          shape: MaterialStateProperty.all(
        RoundedRectangleBorder(
       borderRadius: BorderRadius.circular(25.0),
        ),
          ),
          minimumSize: MaterialStateProperty.all(const Size(250, 55))
        ),
        child:  Text(buttonText , style: const TextStyle(fontSize: 20),),
      
      
    );
  }
}