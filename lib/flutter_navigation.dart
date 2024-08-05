import 'package:flutter/material.dart';
import 'package:ticket_booking/screens/Search%20screen/search_screen.dart';
import 'package:ticket_booking/screens/Ticket/Ticket-screen.dart';
import 'package:ticket_booking/screens/home_screen.dart';

class FlutterNavigation extends StatefulWidget {
  const FlutterNavigation({super.key});

  @override
  State<FlutterNavigation> createState() => _FlutterNavigationState();
}

class _FlutterNavigationState extends State<FlutterNavigation> {
  int _selectedIndex = 2;
  final appScreens = [
    const HomeScreen(),
   const SearchScreen(),
    const TicketView(),
    const Center(
      child: Text('Profile'),
    ),
  ];
  void onTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: appScreens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.grey,
        unselectedItemColor: Colors.grey,
        onTap: onTapped,
        currentIndex: _selectedIndex,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
    );
  }
}
