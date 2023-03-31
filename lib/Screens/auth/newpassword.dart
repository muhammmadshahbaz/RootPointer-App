import 'package:first_project/Screens/auth/verify.dart';
import 'package:flutter/material.dart';

import '../../Widgets/custom_textfield.dart';
//import 'package:flutter/services.dart';
//import 'package:pin_code_fields/pin_code_fields.dart';

//import 'forget.dart';

class NewpasswordScreen extends StatefulWidget {
  const NewpasswordScreen({super.key});

  @override
  State<NewpasswordScreen> createState() => _ForgetscreenState();
}

class _ForgetscreenState extends State<NewpasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Padding(
        padding:const EdgeInsets.all(10.0),
        child: ListView(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(onPressed: () {
                  Navigator.pop(context
                , MaterialPageRoute(builder: ((context) => const Varifyscreen())),);
                },
               child: const Align(
                  alignment: Alignment.topLeft,
                  child: Text('cancel', style:TextStyle(color: Colors.red) ,)
                  ),),
                const SizedBox(
                  height: 20,
                ),
                Image.asset('assets/icons/logonewpassword.png'),
                const SizedBox(
                  height: 25,
                ),
                Image.asset('assets/icons/newpasswordimage.png'),
                const SizedBox(
                  height: 20,
                ),
                       const Padding(
                          padding:  EdgeInsets.symmetric(horizontal: 60),
                          child: Center(
                            child:  Text('Your new password Must be Different from Privously Used Password.',
                             style: TextStyle(fontWeight: FontWeight.bold),
                             textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                    
                  const SizedBox(
                    height: 50,
                  ),
                  const CustomTextField(title: "New Password",icon: Icons.password),
                  const SizedBox(
                    height: 20,
                  ),
                  const CustomTextField(title: "Confirm Password",icon: Icons.password),

                  
                  const SizedBox(
                    height: 40,
                  ),
                  const Text('Change Password', style:  TextStyle(decoration: TextDecoration.underline,
                   fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 221, 10, 10),
                    decorationThickness: 2,),
                   ),
                 
                  const SizedBox(
                    height: 20, 
                  ),
                  ElevatedButton(
                    onPressed: () {
                    },
                    style: ButtonStyle(
                      padding: MaterialStateProperty.all(EdgeInsets.zero ),
                      backgroundColor: MaterialStateProperty.all(Colors.yellow),
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25.0),
                          
                        )
                      ),
                      minimumSize: MaterialStateProperty.all(const Size(245, 55))

                    ),
                    child: const Text('SAVE', style: TextStyle(color: Color.fromARGB(255, 10, 10, 10),
                      fontWeight: FontWeight.bold, fontSize: 20
                    ),),
                    
                  )

                   
                
                

              ],
            )
          ],
        ),
      ),

    );
  }
}