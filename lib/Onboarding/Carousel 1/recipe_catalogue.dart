import 'package:flutter/material.dart';
import 'package:kitchen_stories/Onboarding/Carousel%201/catalogue_1.dart';
import 'package:kitchen_stories/Onboarding/Carousel%201/first_catalogue_list.dart';

class RecipeCatalogue extends StatelessWidget {
  const RecipeCatalogue({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(12, 12, 0, 12),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
            children: firstList.map((data) {
          return Padding(
            padding: const EdgeInsets.only(right: 12),
            child: FirstCatalogue(
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
