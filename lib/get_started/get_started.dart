import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:gap/gap.dart';
import 'package:kitchen_stories/constants.dart';

class GetStarted extends StatelessWidget {
  const GetStarted({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      elevation: 1,
      child: Container(
        padding: const EdgeInsets.fromLTRB(15, 30, 20, 25),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: const Color.fromARGB(255, 250, 244, 201),
        ),
        height: 260,
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 280,
              child: const Text(
                'Recipes made to your taste',
                style: TextStyle(
                    fontSize: 23,
                    fontWeight: FontWeight.w500,
                    letterSpacing: 1),
              ),
            ),
            const Gap(10),
            Container(
              width: 260,
              child: const Text(
                'Get your personalized recipe picks in 10 seconds.',
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                    letterSpacing: 1),
              ),
            ),
            const Gap(30),
            Center(
              child: MaterialButton(
                elevation: 0,
                color: greenButtonColor,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)),
                height: 46,
                minWidth: 10,
                onPressed: () {},
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'Get started here',
                    style: TextStyle(
                        color: Colors.white, fontSize: 16, letterSpacing: 1),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
