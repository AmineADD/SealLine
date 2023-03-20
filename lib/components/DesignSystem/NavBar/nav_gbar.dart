import 'package:flutter/material.dart'; 
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:line_icons/line_icons.dart';

class NavBarG extends StatelessWidget {
  const NavBarG({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
        child:  GNav(  
            gap: 8, 
            iconSize: 24,  
            color:Colors.white,
            backgroundColor: Colors.black,
            activeColor: Colors.white,
            tabBackgroundColor: Color.fromARGB(255, 143, 134, 134),
            padding: EdgeInsets.all(16),
            tabs: [
              GButton(
                icon: LineIcons.home,
                text: 'Home',
              ),
              GButton(
                icon: LineIcons.heartAlt,
                text: 'Likes',
              ),
              GButton(
                icon: LineIcons.search,
                text: 'Search',
              ), 
            ]),
      ),
    );
  }
}
