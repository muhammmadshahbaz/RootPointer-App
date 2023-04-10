import 'package:first_project/Screens/auth/verify.dart';
import 'package:flutter/material.dart';

//import '../../Widgets/custom_textfield.dart';
import '../../Widgets/custom_button.dart';
import 'login.dart';
//import 'package:flutter/src/widgets/framework.dart';
//import 'package:flutter/src/widgets/placeholder.dart';

class Forgetscreen extends StatefulWidget {
  const Forgetscreen({super.key});

  @override
  State<Forgetscreen> createState() => _ForgetscreenState();
}

class _ForgetscreenState extends State<Forgetscreen> {
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
                , MaterialPageRoute(builder: ((context) => const LoginScreen())),);
                },
               child: const Align(
                  alignment: Alignment.topLeft,
                  child: Text('cancel', style:TextStyle(color: Colors.red) ,)
                  ),),
                const SizedBox(
                  height: 20,
                ),
                Image.asset('assets/icons/logoforget.png'),
                const SizedBox(
                  height: 20,
                ),
                Image.asset('assets/icons/forgetimage.png'),
                const SizedBox(
                  height: 20,
                ),
                       const Padding(
                          padding:  EdgeInsets.symmetric(horizontal: 40),
                          child: Center(
                            child:  Text('please enter your email address to receive a varification code',
                             style: TextStyle(fontWeight: FontWeight.bold),
                             textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                    
                  const SizedBox(
                    height: 50,
                  ),
                  const CustomTextField(title: "Email Adress",icon: Icons.email,isObscureText: true,),
                  const SizedBox(
                    height: 60,
                  ),
                    CustomButton(buttonText: "SEND", backgroundColor: Colors.yellow,
                    textColor: Colors.black, onTap: () {
                      Navigator.push(context
                , MaterialPageRoute(builder: ((context) => const Varifyscreen())),);
                    },),

                
                

              ],
            )
          ],
        ),
      ),

    );
  }
}