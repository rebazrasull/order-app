import 'package:flutter/material.dart';
import 'package:my_app_name/features/exploer/screens/explore_screen.dart';
import 'package:my_app_name/features/home/pages/home_screens.dart';
import 'package:my_app_name/features/notifications/pages/notificationsscreen.dart';
import 'package:my_app_name/features/profile/pages/profile_screen.dart';
import 'package:my_app_name/features/shopping/pages/shoppingbagscreen.dart';

class Navigationb extends StatefulWidget {
  const Navigationb({super.key});

  @override
  State<Navigationb> createState() => _NavigationbState();
}

class _NavigationbState extends State<Navigationb> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _pages = [
    const Homescreen(),
    const Explorescreen(),
    const Shoppingbagscreen(),
    const Notificationsscreen(),
    const ProfileScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(index: _selectedIndex, children: _pages),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.red,

        backgroundColor: Colors.white,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: const [
          // Added const for performance
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
            icon: Icon(Icons.explore_outlined),
            label: 'Explore',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag_outlined),
            label: 'Shopping',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications_outlined),
            label: ' Notification',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
