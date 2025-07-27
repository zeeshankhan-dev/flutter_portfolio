import 'package:flutter/material.dart';
import 'home_screen.dart';
import 'projects_screen.dart';
import 'contact_screen.dart';
import 'profile_screen.dart'; // ✅ Import Profile Screen

class MainNavigation extends StatefulWidget {
  @override
  _MainNavigationState createState() => _MainNavigationState();
}

class _MainNavigationState extends State<MainNavigation> {
  int _selectedIndex = 0;

  // ✅ All Screens
  final List<Widget> _screens = [
    HomeScreen(),
    ProjectsScreen(),
    ContactScreen(),
    ProfileScreen(), // ✅ Add profile screen here
  ];

  // ✅ Corresponding Titles
  final List<String> _titles = [
    'Home',
    'Projects',
    'Contact',
    'Profile', // ✅ Tab title
  ];

  // ✅ Change screen on tap
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_titles[_selectedIndex]),
      ),
      body: _screens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.indigo,
        unselectedItemColor: Colors.grey,
        onTap: _onItemTapped,
        type: BottomNavigationBarType.fixed, // Required for 4+ items
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.work), label: 'Projects'),
          BottomNavigationBarItem(icon: Icon(Icons.contact_mail), label: 'Contact'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'), // ✅ New tab
        ],
      ),
    );
  }
}
