import 'package:flutter/material.dart';
import 'package:kitchen_stories/Bottom%20bar/bottombar.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (BuildContext context) {
          return const BottomBar();
        }),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text(
                'kitchen stories',
                style: TextStyle(fontSize: 25, letterSpacing: 3,
                fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                'ANYONE CAN COOK',
                style: TextStyle(fontSize: 10, letterSpacing: 2),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
