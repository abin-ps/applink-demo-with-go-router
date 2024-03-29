import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:go_router/go_router.dart';

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
          crossAxisCount: 3,
          mainAxisSpacing: 4,
          crossAxisSpacing: 4,
          itemCount: _categories.length,
          itemBuilder: (context, index) {
            return CustomGridTile(
              onTap: (int index) {
                //todo navigate to catelog screen
                context.push('/catelog', extra: {'id': _categories[index].id});
              },
              onHover: (bool value) {
                print(value);
                if (value) {
                  setState(() {
                    _categories[index].isHovered = true;
                  });
                } else {
                  {
                    setState(() {
                      _categories[index].isHovered = false;
                    });
                  }
                }
              },
              index: index,
              extendsList: extendsList,
              category: _categories[index],
              isHovered: _categories[index].isHovered,
            );
          },
        ),
      ),
    );
  }
}
