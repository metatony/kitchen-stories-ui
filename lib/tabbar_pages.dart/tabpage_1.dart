import 'package:flutter/material.dart';

class TabPage1 extends StatelessWidget {
  const TabPage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Center(
              child: Text(
                'You haven\'t created any cookbooks yet',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
