import 'package:flutter/material.dart';
import 'package:kitchen_stories/authors%20list/authors_widget.dart';
import 'package:kitchen_stories/get_started/get_started.dart';
import 'package:kitchen_stories/recipes%20list/catalogue_1.dart';
import 'package:kitchen_stories/screens/bottombar.dart';
import 'package:kitchen_stories/screens/home.dart';
import 'package:kitchen_stories/screens/profile_account.dart';
import 'package:kitchen_stories/screens/signup.dart';
import 'package:kitchen_stories/screens/splash.dart';
import 'package:kitchen_stories/tabbar_pages.dart/tabpage_1.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


void main() {
  runApp(const Kitchen());
}

class Kitchen extends StatelessWidget {
  const Kitchen({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      theme: ThemeData( fontFamily: GoogleFonts.poppins().fontFamily),
      
      debugShowCheckedModeBanner: false,
      home: Splash(),
    );
  }
}
