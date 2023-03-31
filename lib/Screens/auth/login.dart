import 'package:first_project/Screens/auth/signup.dart';
import 'package:flutter/material.dart';

import 'forget.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => LoginScreenState();
}
class LoginScreenState extends State<LoginScreen> {
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
                 TextButton(onPressed: () {
                  Navigator.pop(context
                , MaterialPageRoute(builder: ((context) => const SignupScreen())),);
                },
               child: const Align(
                  alignment: Alignment.topLeft,
                  child: Text('cancel', style:TextStyle(color: Colors.red) ,)
                  ),),
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
          child: Image(image: AssetImage('assets/icons/loginimage.png'),
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
           const CustomTextField(title: "Email",icon: Icons.email),
           const SizedBox(
        height: 20,
           ),
           const CustomTextField(title: "Password",icon: Icons.password,isObscureText: true,),
           TextButton(
            style:const ButtonStyle(
               
            ),
            onPressed: () {
               Navigator.push(context
                , MaterialPageRoute(builder: ((context) => const Forgetscreen())),);
            },
            child: const Text('forget password?', style: TextStyle(color: Colors.black), textAlign:TextAlign.right,),
            
            
           ),
        
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
        child: const Text('login', style: TextStyle(fontSize: 20),),
           ),
           Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
              const Text('Dont have and Account?', style: TextStyle(fontSize: 12),),
              TextButton(
                style: ButtonStyle(padding: MaterialStateProperty.all(EdgeInsets.zero)),
              onPressed: () {
                Navigator.push(context
                , MaterialPageRoute(builder: ((context) => const SignupScreen())),);
              },
                child: const Text('signup',style: TextStyle(color: Colors.red),),
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
          
        
        
      
    
  

        
      
   
      
        
        
    
  
