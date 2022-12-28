import 'package:flutter/material.dart';
import 'package:kitchen_stories/recipes%20list%202/catalogue_2.dart';
import 'package:kitchen_stories/recipes%20list%202/second_catalogue_list.dart';

class QuickWins extends StatelessWidget {
  const QuickWins({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(12, 12, 0, 12),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
            children: secondList.map((data) {
          return Padding(
            padding: const EdgeInsets.only(right: 12),
            child: SecondCatalogue(
                title: data.title,
                accountName: data.accountName,
                avatar: data.avatar,
                images: data.images,
                min: data.min,
                likes: data.likes),
          );
        }).toList()),
      ),
    );
  }
}
