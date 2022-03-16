


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:house_rental_app/doctor_app/first_page.dart';
import 'package:house_rental_app/doctor_app/profile.dart';
import 'package:house_rental_app/doctor_app/schedule.dart';

import 'chat.dart';



class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {

  List pages = [
    FirstPage(),
    ProfilePage(),
    SchedulePage(),
    ChatPage(),

  ];
  int currentIndex=0;
  void onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        onTap: onTap,
        unselectedFontSize: 0,
        selectedFontSize: 0,
        selectedItemColor: Colors.teal,
        unselectedItemColor: Colors.grey.shade700,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        elevation: 0,
        items: [
          BottomNavigationBarItem(title: Text('Home'), icon: Icon(Icons.home)),
          BottomNavigationBarItem(title: Text('Profile'), icon: Icon(Icons.person)),
          BottomNavigationBarItem(title: Text('Schedule'), icon: Icon(Icons.schedule)),
          BottomNavigationBarItem(title: Text('Chat'), icon: Icon(Icons.chat)),
        ],
      ),
    );
  }
}
