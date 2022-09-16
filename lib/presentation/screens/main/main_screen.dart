import 'package:flutter/material.dart';

import 'package:image_search/config/theme/cw_colors.dart';
import 'package:image_search/presentation/screens/login/login_screen.dart';
import 'package:image_search/presentation/screens/my/my_list_screen.dart';
import 'package:image_search/presentation/screens/search/search_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final List _screens = const [MyListScreen(), LoginScreen(), SearchScreen()];

  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sample App'),
        backgroundColor: CwColors.color3,
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: CwColors.color3,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white.withOpacity(.40),
        selectedFontSize: 14,
        unselectedFontSize: 14,
        currentIndex: _selectedIndex, //현재 선택된 Index
        onTap: (int index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            label: 'My',
            icon: Icon(Icons.list),
          ),
          BottomNavigationBarItem(
            label: 'Login',
            icon: Icon(Icons.person),
          ),
          BottomNavigationBarItem(
            label: 'Search',
            icon: Icon(Icons.search),
          ),
        ],
      ),
      body: Center(
        child: _screens.elementAt(_selectedIndex),
      ),
    );
  }
}
