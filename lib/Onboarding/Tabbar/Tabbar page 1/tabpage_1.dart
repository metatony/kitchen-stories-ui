import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:kitchen_stories/Constatnts/constants.dart';

import 'tabbar1_catalogue.dart';

class TabPage1 extends StatelessWidget {
  const TabPage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(12, 12, 0, 0),
          child: Row(
            children: const [
              TabBar1Catalogue(
                title: 'My first cookbook',
                // images:
                //     'https://images.pexels.com/photos/2160296/pexels-photo-2160296.jpeg?auto=compress&cs=tinysrgb&w=600',
                // min: '10 min.',
              ),
              // //Gap(10),
              // Expanded(
              //   child: TabBar1Catalogue(
              //     title: 'Completo Italiano',
              //     // images:
              //     //     'https://images.pexels.com/photos/2160296/pexels-photo-2160296.jpeg?auto=compress&cs=tinysrgb&w=600',
              //     // min: '10 min.',
              //   ),
              // ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: kOrangeColor,
        onPressed: () {},
        child: Icon(FeatherIcons.plus),
      ),
    );
  }
}
