import 'package:clothi/manager/color_manager.dart';
import 'package:clothi/presentation/screens/home_screen/home_screen.dart';
import 'package:clothi/presentation/screens/order_screen/order_screen.dart';
import 'package:clothi/presentation/screens/product_category_screen/product_category_screen.dart';
import 'package:clothi/presentation/screens/profile_screen/profile_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int activeIndex = 0;
  List<Widget> pages = const[
     HomeScreen(),ProductCategoryScreen(),
    OrderScreen(),ProfileScreen()];


  @override
  Widget build(BuildContext context) {


    return Scaffold(
        body: pages[activeIndex],
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: appColors.primaryDark,
          unselectedItemColor: Colors.grey,
          showUnselectedLabels: false,
          showSelectedLabels: false,
          selectedItemColor: appColors.primaryDark,
          currentIndex: activeIndex,
          onTap: (value){
            setState(() {
              activeIndex = value;
            });
          },
          items:  const [
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.home),
              label: ""
            ),
            BottomNavigationBarItem(
                icon:Icon(CupertinoIcons.bag),
                label: ""
                ),
            BottomNavigationBarItem(
                icon:Icon(CupertinoIcons.square_list),
                label: ""
                ),
            BottomNavigationBarItem(
                icon:Icon(CupertinoIcons.person),
                label: ""
               ),
          ],)
    );
  }
}