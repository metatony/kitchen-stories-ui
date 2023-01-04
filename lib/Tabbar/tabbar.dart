import 'package:flutter/material.dart';
import 'package:kitchen_stories/Constatnts/constants.dart';
import 'package:kitchen_stories/Tabbar/tabpage_1.dart';
import 'package:kitchen_stories/Tabbar/tabpage_2.dart';
import 'package:kitchen_stories/Tabbar/tabpage_3.dart';

class TabBarPage extends StatelessWidget {
  const TabBarPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        Align(
          alignment: Alignment.centerLeft,
          child: TabBar(
            isScrollable: true,
            labelStyle: TextStyle(fontWeight: FontWeight.w500),
            indicatorColor: kOrangeColor,
            labelColor: kOrangeColor,
            unselectedLabelColor: Colors.grey,
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
        Expanded(
          child: TabBarView(
            children: [
              TabPage1(),
              TabPage2(),
              TabPage3(),
            ],
          ),
        ),
      ],
    );
  }
}
