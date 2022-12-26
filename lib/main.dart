import 'package:flutter/material.dart';
import 'package:kitchen_stories/screens/bottombar.dart';
import 'package:kitchen_stories/screens/profile_account.dart';
import 'package:kitchen_stories/screens/signup.dart';
import 'package:kitchen_stories/tabbar_pages.dart/tabpage_1.dart';

void main() {
  runApp(const Kitchen());
}

class Kitchen extends StatelessWidget {
  const Kitchen({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Profile(),
    );
  }
}
