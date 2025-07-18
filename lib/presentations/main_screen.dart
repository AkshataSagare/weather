import 'package:flutter/material.dart';
import 'package:weather_app/presentations/tabs/home_screen/home_screen.dart';
import 'package:weather_app/presentations/tabs/pick_location_screen/pick_location_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final List<Widget> _pages = [HomeScreen(), PickLocationScreen()];

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[selectedIndex],

      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) => setState(() {
          selectedIndex = index;
        }),
        currentIndex: selectedIndex,

        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_filled), 
            label: "Home"
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.location_on),
            label: "Location",
          ),
        ],
      ),
    );
  }
}
