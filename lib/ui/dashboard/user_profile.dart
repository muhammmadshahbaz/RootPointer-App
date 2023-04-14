import 'package:flutter/material.dart';
import 'package:first_project/Widgets/privates/customtext.dart';
import 'package:first_project/Widgets/privates/custom_container.dart';

class UserProfile extends StatefulWidget {
  const UserProfile({super.key});
  @override
  State<UserProfile> createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: ListView(
        physics: BouncingScrollPhysics(),
        shrinkWrap: true,
        children: [
          Column(
              //mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(children: [
                  IconButton(
                    icon: const Icon(Icons.arrow_back),
                    onPressed: () {},
                  ),
                  const SizedBox(
                    width: 310,
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: IconButton(
                      icon: const Icon(Icons.more_vert),
                      onPressed: () {},
                    ),
                  ),
                ]),
                const SizedBox(height: 10),
                Image.asset(
                  'assets/icons/logo2.png',
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'Karylle Cruz',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                const Text('Alaminos City, Pangasinan'),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomText(countText: "0", title: "Missed"),
                    CustomText(countText: "10", title: "Completed"),
                    CustomText(
                        countText: "5",
                        title: "Subjects",
                        isVerticalDivider: false),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                        'Current Lessons',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CustomContainer(
                        title: 'html',
                        color: Color.fromARGB(255, 233, 107, 65),
                        parameter: "HTML"),
                    CustomContainer(
                      title: 'Css',
                      color: Color.fromARGB(255, 55, 101, 236),
                      parameter: "CSS",
                    ),
                    CustomContainer(
                      title: 'jS',
                      color: Color.fromARGB(255, 242, 215, 1),
                      parameter: "JavaScript",
                    ),
                    CustomContainer(
                      title: 'PHP',
                      color: Color.fromARGB(255, 119, 123, 179),
                      parameter: "PHP",
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(children: [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      'Activities',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                  )
                ]),
                SizedBox(height: 0),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Container(
                              height: 30,
                              width: 30,
                              decoration: BoxDecoration(
                                  color: Colors.black, shape: BoxShape.circle),
                              child: Icon(
                                Icons.check_circle,
                                color: Colors.green,
                              )),
                          SizedBox(
                            width: 10,
                          ),
                          Text('You sumbit yours Assignment'),
                          SizedBox(
                            width: 70,
                          ),
                          Text('3mnt Ago')
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        children: [
                          Icon(Icons.stars),
                          SizedBox(
                            width: 10,
                          ),
                          Text('You have Complete the C++ Course'),
                          SizedBox(
                            width: 50,
                          ),
                          Text('5hrs Ago'),
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        children: [
                          Icon(Icons.calendar_today),
                          SizedBox(
                            width: 10,
                          ),
                          Text('Jayle centors added you to the group'),
                          SizedBox(
                            width: 40,
                          ),
                          Text('2mth Ago')
                        ],
                      ),
                    ],
                  ),
                ),
              ]),
        ],
      ),
    ));
  }
}
