import 'package:flutter/material.dart';
import 'package:kitchen_stories/Onboarding/authors%20list/authors_list.dart';
import 'package:kitchen_stories/Onboarding/authors%20list/authors_widget.dart';

class AuthorsRefractor extends StatelessWidget {
  const AuthorsRefractor({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(12, 12, 0, 12),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: myList.map((data) {
            return Padding(
              padding: const EdgeInsets.only(right: 12),
              child: AuthorsWidget(names: data.names, images: data.images),
            );
          }).toList(),
        ),
      ),
    );
  }
}
