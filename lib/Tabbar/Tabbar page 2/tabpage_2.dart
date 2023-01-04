import 'package:flutter/material.dart';

import 'tabBar2_catalogue.dart';

class TabPage2 extends StatelessWidget {
  const TabPage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Row(
            children: const [
              Expanded(
                child: TabBar2Catalogue(
                  title: 'Completo Italiano',
                  images:
                      'https://images.pexels.com/photos/2160296/pexels-photo-2160296.jpeg?auto=compress&cs=tinysrgb&w=600',
                  min: '10 min.',
                ),
              ),
              //Gap(10),
              Expanded(
                child: TabBar2Catalogue(
                  title: 'Completo Italiano',
                  images:
                      'https://images.pexels.com/photos/2160296/pexels-photo-2160296.jpeg?auto=compress&cs=tinysrgb&w=600',
                  min: '10 min.',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
