import 'package:flutter/material.dart';
import 'package:kitchen_stories/screens/home.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 5), () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (BuildContext context) {
          return const Home();
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
                style: TextStyle(fontSize: 20, letterSpacing: 3),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                'ANYONE CAN COOK',
                style: TextStyle(fontSize: 9, letterSpacing: 2),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
