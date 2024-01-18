import 'package:final_project/features/dashboard/contact/contact_page.dart';
import 'package:final_project/features/dashboard/home/home_page.dart';
import 'package:final_project/features/dashboard/profile/profile_page.dart';
import 'package:flutter/material.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: dashboardBody(_currentIndex),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: (value) {
            setState(() {
              _currentIndex = value;
            });
          },
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined),
                label: "Home",
                activeIcon: Icon(Icons.home)),
            BottomNavigationBarItem(
                icon: Icon(Icons.contacts_outlined),
                label: "Contacts",
                activeIcon: Icon(Icons.contacts)),
            BottomNavigationBarItem(
                icon: Icon(Icons.person_2_outlined),
                label: "Profile",
                activeIcon: Icon(Icons.person_2))
          ]),
    );
  }
}

Widget dashboardBody(int bottomNavIndex) {
  switch (bottomNavIndex) {
    case 0:
      return const HomePage();
    case 1:
      return const ContactPage();
    case 2:
      return const ProfilePage();
    default:
      return Container();
  }
}
