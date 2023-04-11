import 'package:flutter/material.dart';
//import 'package:flutter/src/widgets/framework.dart';
//import 'package:flutter/src/widgets/placeholder.dart';

class MenuScreen extends StatefulWidget {
  const MenuScreen({super.key});

  @override
  State<MenuScreen> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      //backgroundColor: Colors.blue,
      //appBar: AppBar(),
      body: SafeArea(
        top: true,
        bottom: true,
        child: Drawer(
          backgroundColor: const Color.fromARGB(255, 220, 223, 240),
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: ListView(
            children: [
               ListTile(
                
            leading: Image.asset('assets/icons/avater.png'),
            
            title: const Text('KARYLLE CRUZ', style: TextStyle(fontWeight: FontWeight.bold),),
            subtitle: const Text('Student'),
            trailing: IconButton(
              icon: const Icon(Icons.arrow_forward_ios, color: Colors.black,),
              onPressed: () {
                // Handle press event
              },
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          const ListTile(
            title: Text('Available' ,style: TextStyle(fontWeight: FontWeight.bold),),
            leading: Icon(Icons.circle,color: Color.fromARGB(255, 17, 221, 24),),
          ),
          const ListTile(
            title: Text('Notification' ,style: TextStyle(fontWeight: FontWeight.bold),),
            leading: Icon(Icons.notifications_active, color: Colors.black,),
          ),
          const ListTile(
            title: Text('Settings',style: TextStyle(fontWeight: FontWeight.bold),),
            leading: Icon(Icons.settings, color: Colors.black,),
          ),
          const ListTile(
            title: Text('Data and Storage',style: TextStyle(fontWeight: FontWeight.bold),),
            leading: Icon(Icons.message, color: Colors.black,),
          ),
          const ListTile(
            title: Text('Instructors',style: TextStyle(fontWeight: FontWeight.bold),),
            leading: Icon(Icons.person_2, color: Colors.black,),
          ),
          const ListTile(
            title: Text('Schedules',style: TextStyle(fontWeight: FontWeight.bold),),
            leading: Icon(Icons.calendar_today, color: Colors.black,),
          ),
          const Divider(
            color: Colors.black,
            //thickness: 1,
            endIndent: 25,
            indent: 20,
          ),
          const ListTile(
            title: Text('Logout' ,style: TextStyle(fontWeight: FontWeight.bold),),
            leading: Icon(Icons.logout, color: Colors.black,),
          )
            ]
              ),
          )
          
        ),
      ),
      );
    
    
  }
}