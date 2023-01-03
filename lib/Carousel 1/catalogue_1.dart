
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:gap/gap.dart';
import 'package:kitchen_stories/Constatnts/constants.dart';

class FirstCatalogue extends StatelessWidget {
  const FirstCatalogue(
      {super.key,
      required this.title,
      required this.accountName,
      required this.avatar,
      required this.images,
      required this.min,
      required this.likes});

  final String title;
  final String accountName;
  final String avatar;
  final String images;
  final String min;
  final String likes;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Container(
              height: 330,
              width: 280,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(15),
                  topRight: Radius.circular(15),
                ),
                image: DecorationImage(
                  image: NetworkImage(images),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              top: 15,
              left: 15,
              child: Container(
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 252, 245, 176),
                  borderRadius: BorderRadius.circular(15),
                ),
                height: 27,
                width: 60,
                child: Center(
                    child: Text(
                  min,
                  style: const TextStyle(fontSize: 12),
                )),
              ),
            ),
            Positioned(
              bottom: 15,
              right: 15,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                ),
                height: 32,
                width: 80,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(FeatherIcons.heart),
                    const Gap(8),
                    Text(likes),
                  ],
                ),
              ),
            ),
          ],
        ),
        Card(
          elevation: 1,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(15),
              bottomRight: Radius.circular(15),
            ),
          ),
          child: Container(
            height: 110,
            width: 280,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(15),
                bottomRight: Radius.circular(15),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: catalogueTextStyle,
                  ),
                  Expanded(
                    child: Row(
                      children: [
                        CircleAvatar(
                          radius: 20,
                          backgroundImage: NetworkImage(avatar),
                        ),
                        const Gap(10),
                        Text(
                          accountName,
                          style: const TextStyle(color: orangeColor),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
