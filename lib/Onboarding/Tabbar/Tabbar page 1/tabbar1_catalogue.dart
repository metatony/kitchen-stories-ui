import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:gap/gap.dart';

import '../../../Constatnts/constants.dart';

class TabBar1Catalogue extends StatelessWidget {
  const TabBar1Catalogue({
    super.key,
    required this.title,
    //required this.images,
    //required this.min,
  });

  final String title;
  //final String images;
  //final String min;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Container(
              height: 200,
              width: 180,
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 241, 241, 241),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15),
                  topRight: Radius.circular(15),
                ),
                //   image: DecorationImage(
                //     image: NetworkImage(images),
                //     fit: BoxFit.cover,
                //   ),
              ),
            ),
            // Positioned(
            //   top: 15,
            //   left: 10,
            //   child: Container(
            //     decoration: BoxDecoration(
            //       color: const Color.fromARGB(255, 252, 245, 176),
            //       borderRadius: BorderRadius.circular(15),
            //     ),
            //     height: 24,
            //     width: 50,
            //     // child: Center(
            //     //   child: Text(
            //     //     min,
            //     //     style: const TextStyle(fontSize: 11),
            //     //   ),
            //     // ),
            //   ),
            // ),
            // Positioned(
            //   top: 15,
            //   right: 25,
            //   child: Container(
            //     decoration: BoxDecoration(
            //       color: Colors.white,
            //       borderRadius: BorderRadius.circular(15),
            //     ),
            //     height: 28,
            //     width: 83,
            //     child: Row(
            //       mainAxisAlignment: MainAxisAlignment.center,
            //       children: [
            //         Container(
            //           width: 10,
            //           height: 10,
            //           decoration: BoxDecoration(
            //             color: Color(0xffF7D047),
            //             shape: BoxShape.circle,
            //           ),
            //         ),
            //         Gap(5),
            //         Center(
            //             child: Text(
            //           'IN REVIEW',
            //           style: const TextStyle(fontSize: 11),
            //         )),
            //       ],
            //     ),
            //   ),
            // ),
          ],
        ),
        Material(
          elevation: 1,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(15),
              bottomRight: Radius.circular(15),
            ),
          ),
          child: Container(
            height: 80,
            width: 180,
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
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: kSlimCatalogueTextStyle,
                  ),
                  const Text(
                    '0 entries',
                    style: TextStyle(color: Colors.grey),
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
