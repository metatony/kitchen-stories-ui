import 'package:flutter/material.dart';
import 'package:kitchen_stories/screens/email_sign.dart';
import 'package:kitchen_stories/screens/signup.dart';
import 'package:kitchen_stories/tabbar_pages.dart/tabpage_1.dart';
import 'package:kitchen_stories/tabbar_pages.dart/tabpage_2.dart';
import 'package:kitchen_stories/tabbar_pages.dart/tabpage_3.dart';

class TabBarr extends StatelessWidget {
  const TabBarr({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(300),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      'Profile',
                      style: TextStyle(
                        fontSize: 19,
                      ),
                    ),
                    const Spacer(),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.settings,
                        size: 20,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      height: 120,
                      width: 110,
                      decoration: BoxDecoration(
                          color: Colors.orangeAccent,
                          borderRadius: BorderRadius.circular(10)),
                      child: const Center(
                        child: Text(
                          'J',
                          style: TextStyle(
                              fontSize: 80,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: EdgeInsets.all(15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'jonmobbin',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 18,
                            ),
                          ),
                          const Text(
                            'Community',
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 18,
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              print('I\'m edited');
                            },
                            child: Container(
                              height: 30,
                              width: 110,
                              padding: EdgeInsets.all(4),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                border: Border.all(color: Colors.teal),
                              ),
                              child: Text(
                                'Edit Profile',
                                style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 20,
                                    color: Colors.teal),
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
        body: Column(
          children: const [
            Align(
              alignment: Alignment.centerLeft,
              child: TabBar(
                isScrollable: true,
                labelStyle: TextStyle(fontWeight: FontWeight.w500),
                indicatorColor: Colors.orange,
                labelColor: Colors.orange,
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
            // Expanded(
            //   child: TabBarView(
            //     children: [
            //       TabPage1(),
            //       TabPage2(),
            //       TabPage3()
            //       ,
            //     ],
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
/*
AppBar(
elevation: 0,
backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
),
*/
