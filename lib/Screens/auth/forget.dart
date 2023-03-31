import 'package:first_project/Screens/auth/verify.dart';
import 'package:flutter/material.dart';

//import '../../Widgets/custom_textfield.dart';
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
                  ElevatedButton(
                    onPressed: () {
                       Navigator.push(context
                , MaterialPageRoute(builder: ((context) => const Varifyscreen())),);
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
                    child: const Text('SEND', style: TextStyle(color: Color.fromARGB(255, 10, 10, 10),
                      fontWeight: FontWeight.bold
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