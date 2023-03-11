import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import 'custom_loader.dart';

class CustomImage extends StatelessWidget {
  const CustomImage({super.key, required this.uri, this.imageBuilder});
  final String uri;
  final Widget Function(BuildContext, ImageProvider<Object>)? imageBuilder;
  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: uri,
      imageBuilder: imageBuilder,
      errorWidget: (context, url, error) =>
          const Center(child: Icon(Icons.error)),
      progressIndicatorBuilder: (context, url, progress) =>
          const Center(child: CustomLoader()),
    );
  }
}
