import 'package:applink_demo/common_widgets/padded.dart';
import 'package:flutter/material.dart';

import '../models/category.dart';

class CustomGridTile extends StatelessWidget {
  const CustomGridTile({
    super.key,
    required this.extendsList,
    this.maxHeight = 100,
    required this.category,
    required this.index,
    this.onTap,
    this.onHover,
    this.isHovered = false,
  });
  final List<double> extendsList;
  final double maxHeight;
  final Category category;
  final int index;
  final void Function(int)? onTap;
  final void Function(bool)? onHover;
  final bool isHovered;

  @override
  Widget build(BuildContext context) {
    final height = extendsList[index] * maxHeight;
    return InkWell(
      onHover: (value) {
        onHover != null ? onHover!(value) : null;
      },
      onTap: () {
        onTap != null ? onTap!(index) : null;
      },
      // onFocusChange: (value) {},
      child: Stack(
        children: [
          Container(
            height: height,
            decoration: BoxDecoration(image: DecorationImage(image: NetworkImage(category.imageUrl))),
          ),
          isHovered
              ? Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padded(
                        leftPadding: 4,
                        child: Text(
                          category.name,
                          overflow: TextOverflow.ellipsis,
                        )),
                    Padded(
                        leftPadding: 4,
                        bottomPadding: 3,
                        child: Text(
                          category.description ?? '',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        )),
                  ],
                )
              : const SizedBox()
        ],
      ),
    );
  }
}
