import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          title: const Text(
            'Profile',
            style: TextStyle(color: Colors.black, fontSize: 20),
          ),
          actions: [
            IconButton(
              icon: const Icon(
                FeatherIcons.settings,
                color: Colors.black,
              ),
              onPressed: () {},
            ),
          ],
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.all(18),
                      width: 125,
                      height: 130,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(246, 254, 236, 75),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    Column(
                      children: const [
                        Text('jonmobbin'),
                        SizedBox(
                          height: 5,
                        ),
                        Text('Community'),
                        SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
        ));
  }
}
