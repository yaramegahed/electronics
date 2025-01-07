import 'package:cached_network_image/cached_network_image.dart';
import 'package:electronics/features/electronics/data/model/elec_model.dart';
import 'package:flutter/material.dart';

class WidgetBody extends StatelessWidget {
  final ProductTestModel model;

  const WidgetBody({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    print(model.rating);
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.white,
                ),
                borderRadius: BorderRadius.circular(15)),
            width: double.infinity, height: 200,
            // child: Text(model.title),
            child: CachedNetworkImage(
              fit: BoxFit.fill,
              imageUrl: model.image,
              progressIndicatorBuilder: (context, url, downloadProgress) =>
                  CircularProgressIndicator(value: downloadProgress.progress),
              errorWidget: (context, url, error) => const Icon(Icons.error),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            model.title,
            maxLines: 1,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          Text(
            model.rating.toString(),
            maxLines: 1,
          ),
        ],
      ),
    );
  }
}
