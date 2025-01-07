import 'package:cached_network_image/cached_network_image.dart';
import 'package:electronics/features/electronics/data/model/elec_model.dart';
import 'package:flutter/material.dart';

class WidgetBody extends StatelessWidget {
  final ProductTestModel model;

  const WidgetBody({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(color: Colors.brown, width: 5),
          borderRadius: BorderRadius.circular(15)),
      width: double.infinity, height: 500,
      // child: Text(model.title),
      child: CachedNetworkImage(
        fit: BoxFit.cover,
        imageUrl: model.image,
        progressIndicatorBuilder: (context, url, downloadProgress) =>
            CircularProgressIndicator(value: downloadProgress.progress),
        errorWidget: (context, url, error) => const Icon(Icons.error),
      ),
    );
  }
}
