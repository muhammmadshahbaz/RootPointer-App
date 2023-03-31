
 import 'package:first_project/Screens/auth/login.dart';
// import 'package:first_project/Screens/custom_textfield.dart';
import 'package:flutter/material.dart';



class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: ListView(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                
                children: [
                 const Align(alignment: Alignment.topLeft,
                   child:  Text(
                      "Cancel",style: TextStyle(color: Colors.red),
                    ),
                 ),
               Container( height: 45,width: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  color: Colors.black, 
                ),
        padding: const EdgeInsets.all(10.0),
        child: const Center(
          child:  Text(
        'Hey! welcome',
        style: TextStyle(fontSize: 20.0, color: Colors.white),
        
          ),
        )),
          
        const SizedBox(
          height: 100.0,
          child: Image(image: AssetImage('assets/icons/logoimage.png'),
          ),
        ),
         const Text('connect using social networs',style: TextStyle(color: Colors.black, fontSize: 10), 
         ),
      
         const SizedBox(
          height: 20.0
          ),
          
              Image.asset('assets/icons/imagefb.png'),
         const SizedBox(
          height: 20,
         ),
         
         const  Text('________ or continue with ________', style: TextStyle(fontSize: 10),),
         const SizedBox(
          height: 20,
         ),
       const CustomTextField(title: "Full Name",icon: Icons.person), 
           const SizedBox(
        height: 20,
           ),
           const CustomTextField(title: "Email",icon: Icons.email),
           const SizedBox(
        height: 20,
           ),
           const CustomTextField(title: "Password",icon: Icons.password,isObscureText: true,),
        
           const SizedBox(
        height: 20,
           ),
        const CustomTextField(title: "Confirm Password", icon: Icons.password, isObscureText: true,),
           
          //  const SizedBox(
          //   height: 20,
          //  ),
           const SizedBox(
        height: 60,
           ),
      
           ElevatedButton(
        onPressed: () {},
        
         style: ButtonStyle(
              padding:  MaterialStateProperty.all(EdgeInsets.zero),
          backgroundColor: MaterialStateProperty.all(const Color.fromARGB(255, 6, 31, 51)),
          shape: MaterialStateProperty.all(
        RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25.0),
        ),
          ),
          minimumSize: MaterialStateProperty.all(const Size(250, 55)),
        ),
        child: const Text('SIGN UP', style: TextStyle(fontSize: 20),),
      
      
           ),
           Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
              const Text('Already have an account?', style: TextStyle(fontSize: 12),),
              TextButton(
                style: ButtonStyle(padding: MaterialStateProperty.all(EdgeInsets.zero)),
              onPressed: () {
                Navigator.push(context
                , MaterialPageRoute(builder: ((context) => const LoginScreen())),);
              },
                child: const Text('LOGin',style: TextStyle(color: Colors.green),),
              )
        ],
           ),
                      //   const  SizedBox(
                      //     height: 0,
                      //  ),
                ],
                ),
            ],
          ),
          ),
      ),
      );
    
  }
}
