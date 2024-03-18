import 'package:flutter/material.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _currentIndex = 0;

  final List<IconData> _icons = [
    Icons.home,
    Icons.search,
    Icons.notifications,
    Icons.favorite,
    Icons.person,
  ];

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: _currentIndex,
      onTap: (index) {
        setState(() {
          _currentIndex = index;
        });
      },
      items: const [
        BottomNavigationBarItem(
          icon: Column(
            children: [
              Icon(
                Icons.home,
                color: Colors.grey,
              ),
              Text("Home")
            ],
          ),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Column(
            children: [
              Icon(
                Icons.menu_book_sharp,
                color: Colors.grey,
              ),
              Text("Learn")
            ],
          ),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Column(
            children: [
              Icon(
                Icons.grid_view,
                color: Colors.grey,
              ),
              Text("Hub")
            ],
          ),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Column(
            children: [
              Icon(
                Icons.chat_bubble_outline_rounded,
                color: Colors.grey,
              ),
              Text("Chat")
            ],
          ),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Column(
            children: [
              Icon(
                Icons.person,
                color: Colors.grey,
              ),
              Text("Profile")
            ],
          ),
          label: 'Home',
        ),
      ],
    );
  }
}
