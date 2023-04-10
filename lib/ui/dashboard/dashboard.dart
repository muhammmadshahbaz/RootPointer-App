import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'package:flutter/src/widgets/placeholder.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  Color name = const Color(0xff979ac6);
  
var arrColors = [
  const Color.fromARGB(255, 244, 120, 78),
  const Color.fromARGB(255, 128, 173, 209),
  const Color.fromARGB(255, 245, 226, 75),
  const Color.fromARGB(255,151, 154, 198),
  const Color.fromARGB(255, 206, 202, 167),
  const Color.fromARGB(255, 161, 121, 220),
];
var arrColorss = [
   const Color.fromARGB(255, 230, 96, 51),
  const Color.fromARGB(255, 73, 136, 187),
  const Color.fromARGB(255, 182, 163, 23),
  const Color.fromARGB(255, 78, 85, 184),
  const Color.fromARGB(255, 168, 162, 106),
  const Color.fromARGB(255, 116, 78, 173),
];
final List<String> arrText = [  "HTML",  "CSS",  "JAVASCRIPT",  "PHP", "java", "C#"];
  
   get textController => null;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 2.0, ),
        child: ListView(
          shrinkWrap: true,
          children: 
          [
            
            Column(crossAxisAlignment: CrossAxisAlignment.start,
            children: [ 
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text('Good morning,'),
                      SizedBox(
                        height: 14,
                      ),
                      Text('Karylle Cruz',style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                 Row(
                   children: [
                     Image.asset('assets/icons/notification.png'),
                     const SizedBox(
                      width: 6,
                     ),
                      Image.asset('assets/icons/avater.png'),
                   ],
                 )
                ],
              ),
            ),
              Container(
                  padding: const EdgeInsets.all(8),
                  child: Column(
                    children:  [ 
                            Padding(
                            padding: const EdgeInsets.all(2.0),
                          child: CupertinoSearchTextField(
                          controller: textController,
                          placeholder: 'Search',
                          ),
                  ),
                        
                        const SizedBox(
                          height: 20,
                        ),
                            Container( padding: const EdgeInsets.symmetric(horizontal: 20),
                              
                height: 200,
                width: 390,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 26, 101, 172),borderRadius: BorderRadius.circular(10)
                ),
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                 Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10,),
                  child: Column(    
                     mainAxisAlignment: MainAxisAlignment.center,
                     crossAxisAlignment: CrossAxisAlignment.start,
                    children:  [
                    const SizedBox(
                      width: 200,
                      child: Text(
                         "New Courses available, check now",
                         style: TextStyle(fontSize: 16,color: Colors.white),
                       ),
                    ),
                   const SizedBox(height: 40,),
                     ElevatedButton(
                          onPressed: () {
                          },
                          style: ButtonStyle(
                            backgroundColor:const  MaterialStatePropertyAll(Color.fromARGB(255, 254, 145, 46)),
                            shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)))
                          ), 
                          child: const Text('Get Started'),),
                      // const SizedBox(height: 35),
                      // const SizedBox(width: 100),
                    ]
                  )
                ),
                       Column(
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         children: [
                          const SizedBox(),
                           Image.asset(
                      "assets/icons/logo1.png",
                      height: 120,
                      width: 100,
                      fit: BoxFit.cover,
                    ),
                         ],
                       ),
                  ],
                ),
                            ),
                            const SizedBox(
                              height: 20,),
                               Row(
                                 children:const [
                                   Text('Cources', style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),
                            ),
                                 ],
                               ),
                               const SizedBox(
                                height: 10,
                               ),
                               GridView.builder(
                                 shrinkWrap: true,
                                // physics:const  NeverScrollableScrollPhysics(),
                                itemBuilder: (context, index) {
                                  return ClipRRect(
                                   borderRadius: BorderRadius.circular(10),
                                   child: Container(
                                           color: arrColors[index],
                                           child:  Column(
                                             children: [
                                               Padding(
                                                 padding: const EdgeInsets.all(8.0),
                                                 child: Align(
                                                  alignment: Alignment.topLeft,
                                                  
                                                            child: Text(
                                                               arrText[index]
                                                            , style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                                                       ),
                                                     ),
                                                     
                                               ),
                                               const SizedBox(
                                                height: 50,
                                               ),
                                  Row(
                                      children:  [
                                      const Padding(padding:EdgeInsets.all(6.0),
                                      child: Align(alignment: Alignment.bottomLeft,
                                        child: Icon(CupertinoIcons.heart_fill,color: Colors.red, size: 16,),),
                                                  ),
                                        Text(
                          "${(index + 1) * 10}%",
                          style: const TextStyle(fontSize: 16, color: Colors.black),
                        ),
                        const SizedBox(
                          width: 100,
                        ),
                        Container(
                          height: 30,
                          width: 30,
                          color: arrColorss[index],
                          alignment: Alignment.center,
                          child: Text(arrText[index], style: const TextStyle(fontSize: 10, fontWeight: FontWeight.bold),),
                          
                        )
      
                                                ],
                                               )
                                             ],
                                           ),
                                  
                                           ),
                                  );
                                },
                                itemCount: arrColors.length,
                                gridDelegate:  const SliverGridDelegateWithMaxCrossAxisExtent(
                                  maxCrossAxisExtent: 200,
                               crossAxisSpacing: 10,
                               mainAxisSpacing: 10,
                               childAspectRatio: 1.60
                                ),
      
                               )
                  ],
                ),
              ),
            ],
          ),
        ],
        ),
      ),
    
    
              
    );
          

               
        
    
                
    
    
              
              
              
          
        
      
    
        
           
        
  }
}
    
  







      
    
  
