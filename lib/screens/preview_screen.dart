import 'package:applink_demo/models/catelog.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class PreviewScreen extends StatefulWidget {
  const PreviewScreen({
    super.key,
    required this.imageId,
  });
  final String imageId;

  @override
  State<PreviewScreen> createState() => _PreviewScreenState();
}

class _PreviewScreenState extends State<PreviewScreen> {
  Catelog? selectedCatelog;

  @override
  void initState() {
    super.initState();
    setState(() {
      selectedCatelog = Catelog.catelogs.firstWhere((element) => element.id == widget.imageId);
    });
  }

  @override
  Widget build(BuildContext context) {
    const TextStyle appBarTextStyle = TextStyle(color: Colors.black);
    return Scaffold(
      backgroundColor: Colors.white,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(selectedCatelog?.name ?? '', style: appBarTextStyle),
        centerTitle: true,
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () {
              //todo logic to create and share link via
            },
            icon: const Icon(Icons.share),
          )
        ],
      ),
      body: Dismissible(
        key: Key(selectedCatelog?.id ?? '-1'),
        direction: DismissDirection.down,
        onDismissed: (direction) {
          context.pop();
        },
        child: SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: CachedNetworkImage(
            fit: BoxFit.cover,
            imageUrl: selectedCatelog?.imageUrl ??
                'https://w0.peakpx.com/wallpaper/410/412/HD-wallpaper-plain-black-black.jpg',
            placeholder: (context, url) => const SizedBox(height: 24, width: 24, child: CircularProgressIndicator()),
            errorWidget: (context, url, error) => const Icon(Icons.error),
          ),
        ),
      ),
    );
  }
}
