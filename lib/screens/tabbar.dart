import 'package:flutter/material.dart';
import 'package:kitchen_stories/screens/email_sign.dart';
import 'package:kitchen_stories/screens/signup.dart';

class TabBarr extends StatelessWidget {
  const TabBarr({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          elevation: 2,
          backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
          bottom: const PreferredSize(
            preferredSize: Size.fromHeight(2),
            child: Align(
              alignment: Alignment.centerLeft,
              child: TabBar(
                isScrollable: true,
                labelStyle: TextStyle(fontWeight: FontWeight.w500),
                indicatorColor: Colors.orange,
                tabs: [
                  Tab(
                    child: Text(
                      'Cookbooks',
                      style: TextStyle(
                          color: Colors.grey, letterSpacing: 1, fontSize: 16),
                    ),
                  ),
                  Tab(
                    child: Text(
                      'Recipes',
                      style: TextStyle(
                          color: Colors.grey, letterSpacing: 1, fontSize: 16),
                    ),
                  ),
                  Tab(
                    child: Text(
                      'Likes',
                      style: TextStyle(
                          color: Colors.grey, letterSpacing: 1, fontSize: 16),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        body: const TabBarView(children: [
          SignUp(),
          EmailPage(),
          EmailPage(),
        ]),
      ),
    );
  }
}
