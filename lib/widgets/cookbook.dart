import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class CookBook extends StatelessWidget {
  const CookBook({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 250,
          width: double.infinity,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(15),
              topRight: Radius.circular(15),
            ),
            image: DecorationImage(
              image: NetworkImage(
                  'https://assets.epicurious.com/photos/603fdade6984905cd26d1914/2:1/w_4444,h_2222,c_limit/SpringCookbookPreview2021_HERO_JD_03012021_0720_VOG_final.jpg'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Card(
          elevation: 2,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(15),
              bottomRight: Radius.circular(15),
            ),
          ),
          child: Container(
            height: 70,
            width: double.infinity,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(15),
                bottomRight: Radius.circular(15),
              ),
            ),
            child: Padding(
              padding: EdgeInsets.all(10.0),
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Discover quick and easy recipes for every',
                      style: TextStyle(fontSize: 16, letterSpacing: 1),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 6.0),
                    child: Container(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'day with step-by-step instructions.',
                        style: TextStyle(fontSize: 16, letterSpacing: 1),
                      ),
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
