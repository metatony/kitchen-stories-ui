import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:gap/gap.dart';

class AuthorsWidget extends StatelessWidget {
  const AuthorsWidget({super.key, required this.names, required this.images});

  final String names;
  final String images;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          backgroundImage: NetworkImage(images),
          radius: 53,
        ),
        const Gap(7),
        Text(
          names,
          style: const TextStyle(
              letterSpacing: 1, fontSize: 12, fontWeight: FontWeight.w500),
        ),
      ],
    );
  }
}
