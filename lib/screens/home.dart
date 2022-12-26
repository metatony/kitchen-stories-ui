import 'package:flutter/material.dart';
import 'package:kitchen_stories/recipes%20list/catalogue_1.dart';
import 'package:kitchen_stories/recipes%20list/recipe_catalogue.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                  padding: EdgeInsets.all(8.0),
                  child: Text('Our Latest Recipes',
                  style: TextStyle(fontSize: 20,
                  letterSpacing: 1,
                  fontWeight: FontWeight.w500),),
                ),
              ),
              
            ),
            const SliverToBoxAdapter(
              child: RecipeCatalogue(),
            )
          ],
        )),
      );
    
  }
}
