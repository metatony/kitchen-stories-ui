import 'package:flutter/material.dart';
import 'package:kitchen_stories/Constatnts/constants.dart';

class ProfileIcon extends StatelessWidget {
  const ProfileIcon({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          margin: const EdgeInsets.all(18),
          width: 125,
          height: 130,
          decoration: BoxDecoration(
            color: Color(0xffF7D047),
            borderRadius: BorderRadius.circular(10),
          ),
          child: const Center(
            child: Text(
              'J',
              style: TextStyle(
                  fontSize: 80,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'jonmobbin',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
            ),
            const SizedBox(
              height: 5,
            ),
            const Text(
              'Community',
              style: TextStyle(fontSize: 15),
            ),
            const SizedBox(
              height: 5,
            ),
            MaterialButton(
              height: 28,
              minWidth: 120,
              elevation: 0,
              onPressed: () {},
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
                side: const BorderSide(color: kGreenButtonColor, width: 2),
              ),
              color: Colors.white,
              child: const Text('Edit Profile'),
            ),
          ],
        ),
      ],
    );
  }
}
