import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,required this.title, required this.icon,  this.isObscureText = false,
  });
final String title;
final IconData icon;
final bool isObscureText;
  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: 30,
      width: 250,
      child: TextField(  
        obscureText: isObscureText,
                         decoration: InputDecoration(contentPadding:const EdgeInsets.all(10),
                       icon:  Icon(icon , color: Colors.black, ),
                       hintText: title,
                       hintStyle: const TextStyle(color: Colors.blueGrey)
                  
                           ),
                       ),
    );
  }
}

