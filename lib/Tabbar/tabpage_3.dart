import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:kitchen_stories/Carousel%201/catalogue_1.dart';

import '../widgets/tabBar_catalogue.dart';

class TabPage3 extends StatelessWidget {
  const TabPage3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              children: const [
                Expanded(
                  child: TabBarCatalogue(
                    title: 'Fluffy Kaiserschmarrn wi...',
                    accountName: 'Ben Donath',
                    avatar:
                        'https://images.unsplash.com/photo-1610216705422-caa3fcb6d158?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OHx8cGVyc29ufGVufDB8MnwwfHw%3D&auto=format&fit=crop&w=500&q=60',
                    images:
                        'https://images.pexels.com/photos/7218637/pexels-photo-7218637.jpeg?auto=compress&cs=tinysrgb&w=600',
                    min: '30 min.',
                  ),
                ),
                //Gap(10),
                Expanded(
                  child: TabBarCatalogue(
                    title: 'Green Shakshuka',
                    accountName: 'Jamie Oliver',
                    avatar:
                        'https://images.unsplash.com/photo-1554244933-d876deb6b2ff?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MzB8fGJsYWNrJTIwcGVyc29ufGVufDB8MnwwfHw%3D&auto=format&fit=crop&w=500&q=60',
                    images:
                        'https://images.pexels.com/photos/2097090/pexels-photo-2097090.jpeg?auto=compress&cs=tinysrgb&w=600',
                    min: '18 min.',
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
