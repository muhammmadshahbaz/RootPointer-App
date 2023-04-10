import 'dart:developer';

import 'package:first_project/Screens/auth/newpassword.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../../Widgets/custom_button.dart';
import 'forget.dart';
//import 'newpassword.dart';

class Varifyscreen extends StatefulWidget {
  const Varifyscreen({super.key});

  @override
  State<Varifyscreen> createState() => _ForgetscreenState();
}

class _ForgetscreenState extends State<Varifyscreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Padding(
        padding:const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(onPressed: () {
                  Navigator.pop(context
                , MaterialPageRoute(builder: ((context) => const Forgetscreen())),);
                },
               child: const Align(
                  alignment: Alignment.topLeft,
                  child: Text('cancel', style:TextStyle(color: Colors.red) ,)
                  ),),
                const SizedBox(
                  height: 20,
                ),
                Image.asset('assets/icons/verifylogo.png'),
                const SizedBox(
                  height: 20,
                ),
                Image.asset('assets/icons/verifyimage.png'),
                const SizedBox(
                  height: 20,
                ),
                       const Padding(
                          padding:  EdgeInsets.symmetric(horizontal: 60),
                          child: Center(
                            child:  Text('please Enter ther 4-Digits code sent to your email',
                             style: TextStyle(fontWeight: FontWeight.bold),
                             textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                    
                  const SizedBox(
                    height: 50,
                  ),
                    Padding(padding: const EdgeInsets.symmetric(horizontal: 80),
                  child: PinCodeTextField(
  length: 4,
  obscureText: false,
  keyboardType: TextInputType.number,
  inputFormatters: [
    FilteringTextInputFormatter.digitsOnly,
  ],
  pinTheme: PinTheme(
    shape: PinCodeFieldShape.box,
    borderRadius: BorderRadius.circular(5),
    fieldHeight: 40,
    fieldWidth: 40,
    activeFillColor: Colors.white,
    selectedFillColor: Colors.amber,
  ),
   animationDuration:const Duration(milliseconds: 300),
   enableActiveFill: true,
  onChanged: (value) {
    log(value);
  },
   beforeTextPaste: (text) {
    log("Allowing to paste $text");
    return true;
   }, appContext: context,
),
),
                  
                  const SizedBox(
                    height: 30,
                  ),
                  const Text('Resend code', style:  TextStyle(decoration: TextDecoration.underline,
                   fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 221, 10, 10),
                    decorationThickness: 2,),
                   ),
                 
                  const SizedBox(
                    height: 60, 
                  ),
                   CustomButton(buttonText: "VARIFY", backgroundColor: Colors.yellow,
                   textColor: Colors.black,
                    onTap: () {
                     Navigator.push(context
                , MaterialPageRoute(builder: ((context) => const NewpasswordScreen())),);
                  }, ),
                  

                   
                
                

              ],
            )
          ],
        ),
      ),

    );
  }
}