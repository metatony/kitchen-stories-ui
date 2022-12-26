import 'package:flutter/material.dart';
import 'package:kitchen_stories/screens/email_sign.dart';
import 'package:kitchen_stories/screens/profile_account.dart';
import 'package:kitchen_stories/screens/signup.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int selectedIndex = 0;

  List<Widget> widgetOptions = [
    const SignUp(),
    const EmailPage(),
    const SignUp(),
    const SignUp(),
    const Profile(),
  ];

  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widgetOptions.elementAt(selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        selectedItemColor: Colors.orange,
        unselectedItemColor: Colors.grey,
        currentIndex: selectedIndex,
        elevation: 0,
        type: BottomNavigationBarType.fixed,
        onTap: onItemTapped,
        items: const [
          BottomNavigationBarItem(
              icon: Padding(
                padding: EdgeInsets.symmetric(vertical:8.0),
                child: Icon(FeatherIcons.home),
              ),
              label: 'Home',
              backgroundColor: Colors.green),
          BottomNavigationBarItem(
            icon: Padding(
              padding: EdgeInsets.symmetric(vertical:8.0),
              child: Icon(FeatherIcons.search),
            ),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: EdgeInsets.symmetric(vertical:8.0),
              child: Icon(
                FeatherIcons.plusCircle,
              ),
            ),
            label: 'Create',
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: EdgeInsets.symmetric(vertical:8.0),
              child: Icon(
                FeatherIcons.calendar,
              ),
            ),
            label: 'Shopping',
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: EdgeInsets.symmetric(vertical:8.0),
              child: Icon(
                FeatherIcons.user,
              ),
            ),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
