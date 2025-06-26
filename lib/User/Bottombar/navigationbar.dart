import 'package:barbar/User/Bookingspage/bookinpage.dart';
import 'package:barbar/User/Homepages/Homepage.dart';
import 'package:barbar/User/profilepages/profile.dart';
import 'package:barbar/User/shopepage/shopepage.dart';
import 'package:flutter/material.dart';

class NavbarBottom extends StatefulWidget {
  const NavbarBottom({super.key});

  @override
  State<NavbarBottom> createState() => _NavbarBottomState();
}

class _NavbarBottomState extends State<NavbarBottom> {
  int indexnum = 0;

  final amazonui = [Homepage(), Shopepage(), Bookinpage(), Profilepage()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: amazonui[indexnum],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        currentIndex: indexnum,
        onTap: (int value) {
          return setState(() {
            indexnum = value;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Colors.black),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag, color: Colors.black),
            label: 'Shoping',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today, color: Colors.black),
            label: 'Bookings',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person, color: Colors.black),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
