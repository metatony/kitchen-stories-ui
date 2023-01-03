import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:kitchen_stories/profile/profile_icon_container.dart';
import '../Tabbar/tabbar.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(260),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(18, 30, 18, 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Profile',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w500),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(FeatherIcons.settings),
                      ),
                    ],
                  ),
                ),
                const ProfileIcon(),
                const SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
        ),
        body: const TabBarPage(),
      ),
    );
  }
}
