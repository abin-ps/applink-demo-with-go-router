import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import '../models/category.dart';
import '../widgets/grid_tile.dart';

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({super.key});

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  final List<Category> _categories = Category.categories;
  List<double> extendsList = [];
  final rand = Random();
  @override
  void initState() {
    super.initState();
    //todo get categories list form firebase

    //generate random height
    setState(() {
      extendsList = List.generate(_categories.length, (index) => rand.nextInt(3) + 1.9);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Category Screen'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 4.0, right: 4, top: 12),
        child: MasonryGridView.count(
          crossAxisCount: 4,
          mainAxisSpacing: 4,
          crossAxisSpacing: 4,
          itemBuilder: (context, index) {
            return CustomGridTile(
              onTap: (int index) {
                //todo navigate to catelog screen
              },
              index: index,
              extendsList: extendsList,
              bgImage: _categories[index].imageUrl,
            );
          },
        ),
      ),
    );
  }
}
