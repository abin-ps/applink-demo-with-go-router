import 'package:flutter/material.dart';

class CustomGridTile extends StatelessWidget {
  const CustomGridTile({
    super.key,
    required this.extendsList,
    this.maxHeight = 100,
    required this.bgImage,
    required this.index,
    this.onTap,
  });
  final List<double> extendsList;
  final double maxHeight;
  final String bgImage;
  final int index;
  final void Function(int)? onTap;

  @override
  Widget build(BuildContext context) {
    final height = extendsList[index] * maxHeight;
    return InkWell(
      onTap: () {
        onTap != null ? onTap!(index) : null;
      },
      child: Container(
        height: height,
        decoration: BoxDecoration(image: DecorationImage(image: NetworkImage(bgImage))),
      ),
    );
  }
}
