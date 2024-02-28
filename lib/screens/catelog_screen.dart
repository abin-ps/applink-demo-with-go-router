import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:go_router/go_router.dart';

import '../models/category.dart';
import '../models/catelog.dart';
import '../widgets/grid_tile.dart';

class CatelogScreen extends StatefulWidget {
  const CatelogScreen({
    super.key,
    required this.categoryId,
  });

  final String categoryId;

  @override
  State<CatelogScreen> createState() => _CatelogScreenState();
}

class _CatelogScreenState extends State<CatelogScreen> {
  Category? selectedCategory;
  List<Catelog> _catelogs = [];
  List<double> _extendsList = [];
  final rand = Random();
  @override
  void initState() {
    super.initState();
    setState(() {
      selectedCategory = Category.categories.firstWhere((element) => element.id == widget.categoryId);
    });
    //todo get catelogs list form firebase
    final List<Catelog> catelogs =
        Catelog.catelogs.where((element) => element.categoryId == widget.categoryId).toList();

    //generate random height
    final extendsList = List.generate(catelogs.length, (index) => rand.nextInt(3) + 1.9);
    setState(() {
      _catelogs = catelogs;
      _extendsList = extendsList;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(selectedCategory?.name ?? ''),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 4.0, right: 4, top: 12),
        child: MasonryGridView.count(
          crossAxisCount: 3,
          mainAxisSpacing: 4,
          crossAxisSpacing: 4,
          itemCount: _catelogs.length,
          itemBuilder: (context, index) {
            return CustomGridTile(
              onTap: (int index) {
                //todo navigate to catelog screen
                context.push('/catelog/preview', extra: {'id': _catelogs[index].id});
              },
              onHover: (bool value) {
                print(value);
                if (value) {
                  setState(() {
                    _catelogs[index].isHovered = true;
                  });
                } else {
                  {
                    setState(() {
                      _catelogs[index].isHovered = false;
                    });
                  }
                }
              },
              index: index,
              extendsList: _extendsList,
              category: _catelogs[index],
              isHovered: _catelogs[index].isHovered,
            );
          },
        ),
      ),
    );
  }
}
