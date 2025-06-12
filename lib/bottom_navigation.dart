import 'package:flutter/material.dart';
import 'package:coffee_shop/cart_screen.dart';
import 'package:coffee_shop/favorite_screen.dart';
import 'package:coffee_shop/home_screen.dart';
import 'package:coffee_shop/notifications_screen.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int curruntindex = 0;

  final screens = [
    HomeScreen(),
    FavoriteScreen(),
    CoffeeScreen(),
    NotificationsScreen(),
  ];

  Future<bool> _onWillPop() async {
    if (curruntindex != 0) {
      setState(() {
        curruntindex = 0;
      });
      return false;
    }
    return true;
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _onWillPop,
      child: Scaffold(
        body: screens[curruntindex],
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(30),
            child: BottomNavigationBar(
              useLegacyColorScheme: false,
              
              type: BottomNavigationBarType.fixed,
              showSelectedLabels: false,
              iconSize: 24,
              elevation: 0,
              selectedItemColor: Theme.of(context).brightness == Brightness.dark
        ? const Color.fromARGB(255, 113, 30, 30) 
        : const Color(0xffcc5454),
              unselectedItemColor: Theme.of(context).brightness == Brightness.dark
        ? const Color.fromARGB(255, 204, 204, 204) 
        : const Color.fromARGB(255, 54, 54, 54),
              currentIndex: curruntindex,
              showUnselectedLabels: false,
              onTap: (value) {
                setState(() {
                  curruntindex = value;
                });
              },
              items: const [
                BottomNavigationBarItem(
                  icon: Icon(Icons.home_rounded, size: 24),
                  label: "",
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.favorite_outline_rounded, size: 24),
                  label: "",
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.card_travel_rounded, size: 24),
                  label: "",
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.notifications_none_outlined, size: 24),
                  label: "",
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
