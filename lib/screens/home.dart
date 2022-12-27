import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:kitchen_stories/authors%20list/authors_widget.dart';
import 'package:kitchen_stories/recipes%20list/authors_refractor.dart';
import 'package:kitchen_stories/recipes%20list/catalogue_1.dart';
import 'package:kitchen_stories/recipes%20list/recipe_catalogue.dart';
import 'package:kitchen_stories/widgets/cookbook.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Container(
                alignment: Alignment.centerLeft,
                color: Colors.white,
                height: 60,
                width: double.infinity,
                child: const Padding(
                  padding: EdgeInsets.all(13),
                  child: Text(
                    'Our Latest Recipes',
                    style: TextStyle(
                        fontSize: 20,
                        letterSpacing: 1,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ),
            ),
            const SliverToBoxAdapter(
              child: RecipeCatalogue(),
            ),
            const SliverPadding(
              padding: EdgeInsets.all(13),
              sliver: SliverToBoxAdapter(
                child: Text(
                  'More From',
                  style: TextStyle(
                      fontSize: 20,
                      letterSpacing: 1,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ),
            const SliverToBoxAdapter(
              child: AuthorsRefractor(),
            ),
            SliverPadding(
              padding: const EdgeInsets.all(8.0),
              sliver: SliverToBoxAdapter(
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 175,
                        decoration: BoxDecoration(
                            color: Colors.yellow[200],
                            borderRadius: BorderRadius.circular(15)),
                        child: const Padding(
                          padding: EdgeInsets.all(3.0),
                          child: Center(
                            child: Text(
                              'PRESENTED BY KITCHEN STORIES',
                              style: TextStyle(fontSize: 9, letterSpacing: 1),
                            ),
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 9.0),
                        child: Text(
                          'The Kitchen Stories cookbook',
                          style: TextStyle(
                              fontSize: 20,
                              letterSpacing: 1,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Container(
                alignment: Alignment.centerRight,
                color: Colors.white,
                height: 40,
                width: double.infinity,
                child: const Padding(
                  padding: EdgeInsets.all(13),
                  child: Text(
                    'DISCOVER NOW',
                    style: TextStyle(
                        color: Colors.orange,
                        fontSize: 15,
                        letterSpacing: 1,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ),
            ),
            const SliverPadding(
              padding: EdgeInsets.all(13.0),
              sliver: SliverToBoxAdapter(
                child: CookBook(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
