import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    title: 'iteach',
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      backgroundColor: const Color.fromARGB(255, 3, 28, 41),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(child: Image.asset("assets/icons/iteach.png")),
            const Text("taking you are forward ",style: TextStyle(
      color: Colors.white, fontSize: 20.0,)),
            const SizedBox(height: 200,),
            
             Row(
              mainAxisAlignment: MainAxisAlignment.center,
              
               children:const[
             Text('Already have an account?', style: TextStyle(
      color: Colors.white, fontSize: 20.0,)),
              Text('click here',style: TextStyle(
      color: Color.fromARGB(255, 14, 207, 14), fontSize: 20.0, )),
            
             ]
        ),
        const SizedBox(height: 10),
         ElevatedButton(
        
          style: ElevatedButton.styleFrom(
            minimumSize:const Size(200, 0),
            backgroundColor: Colors.amber,
            padding: const EdgeInsets.all(15),
           
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))
          ),
              child: const Text(
                'GET STARTED ',
                style:  TextStyle(color: Colors.red),
                ),
                onPressed: () {},
                
              ),
          ],
        ),
      ));

      
      
  }
}
