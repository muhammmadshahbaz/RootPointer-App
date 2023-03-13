import 'dart:math';

import 'package:flutter/material.dart';
void main() {
  runApp(const MyApp(
  ));
} 
class  MyApp extends StatelessWidget {
  const  MyApp({super.key});
 
  @override
  Widget build(BuildContext context) {
    return   const MaterialApp(
      title: 'MyApp',
      home: MyHomePage(),
    );
  }
}
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() =>MyHomePageState();
}

class MyHomePageState extends State<MyHomePage> {
  var count = 0;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.tealAccent,
      appBar: AppBar(
        title:const Text('testing'),
        backgroundColor: Colors.blueAccent
    ),
    body:  Center(
          child: Text(
            '$count',
            style:const TextStyle(fontSize: 60),
            // selectionColor: Colors.amberAccent,
          ),
        ),
        floatingActionButton: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            FloatingActionButton(
              backgroundColor: Colors.green,
              onPressed: () {
                setState(() {
                  count++;
                  log(count);
                });
              },
              tooltip: 'Increment',
              child: const Icon(Icons.add),
            ),
            const SizedBox(height: 16),
            FloatingActionButton(
              backgroundColor: Colors.red,
              onPressed: () {
                setState(() {
                   if (count > 0){
                    count--;
                   }
                  
                  log(count);
                });
              },
              tooltip: 'Decrement',
              child: const Icon(Icons.remove),
              
            ),
             const SizedBox(height: 16),
            FloatingActionButton(
              backgroundColor: Colors.yellow,
              onPressed: () {
                setState(() {
                  count *= 2;
                  log(count);
                });
              },
              tooltip: 'multiply',
              child: const Icon(Icons.clear)),
            ],
        ),
      );
    
  }
}
      
      
      
    
  



//  import 'package:flutter/material.dart';
//  void main() {
//   runApp(const MaterialApp(
//     title: 'awesom',
//     home:  MyWidget()
//   ));
  
// }
// class MyWidget extends StatelessWidget {
//   const MyWidget({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return  Scaffold(
//       appBar: AppBar(
//         title: const Text('awesom'),
//         backgroundColor: Colors.greenAccent,
//       ),
//       body:  Padding(
//         padding: const  EdgeInsets.all(16.0) ,
//         child: SingleChildScrollView(
//           child: Card(
//             child: Column(
//               children: [
//                 Image.asset("assets/images/images1.jpg",fit: BoxFit.cover,),
//                 const SizedBox(
//                   height: 20,
//                 ),
//                 const Text(
//                   "change me",
//                   style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
//                 ),
//                 const SizedBox(
//                   height: 20,

//                 ),
//                 const Padding(
//                    padding: EdgeInsets.all(16.0),
//                    child: TextField(
//                     decoration: InputDecoration(hintText: "enter something here"),
//                    ),
//                 )

//               ],
              
//             ),
//           ),
//         ),
//       ),
//       drawer: Drawer (
//         child:  ListView(
//           padding: EdgeInsets.zero,
//           children: const  <Widget> [
//             // DrawerHeader(
//             //   decoration: BoxDecoration(color: Colors.amberAccent),
//             //   child:  Text( "how are you"),

//             // ),
//             UserAccountsDrawerHeader(
//               accountName: Text("imrankhan"),
//               accountEmail: Text("imrankhan07@"),
//               currentAccountPicture: CircleAvatar(
//                 backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRJ7I-vNLfawcqm-bi3hYzM6flvMaosQGkZldEo2aP6UQ&s"
//                 ),
//               ),
//             ),
//             ListTile(
//               leading: Icon(Icons.settings),
//               title: Text("setting"),
//               subtitle: Text("privacy"),
//               trailing: Icon(Icons.edit),
//             ),
//             ListTile(
//               leading: Icon(Icons.email),
//               title: Text("email"),
//               subtitle: Text("shahbazjoiya07@gmail.com"),
//               trailing: Icon(Icons.send),
//             ),
//            ListTile(
//               leading: Icon(Icons.person),
//               title: Text("account"),
//               subtitle: Text("personal"),
//               trailing: Icon(Icons.edit)
//               ),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed:() {} ,
//         child: const Icon(Icons.edit),
//       )
//       ,
//     );
//   }
// }