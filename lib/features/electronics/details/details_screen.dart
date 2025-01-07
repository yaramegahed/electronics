import 'package:cached_network_image/cached_network_image.dart';
import 'package:electronics/features/electronics/data/model/elec_model.dart';
import 'package:flutter/material.dart';

import '../view/widget/app_bar.dart';

class DetailsScreen extends StatelessWidget {
  final ProductTestModel? model;

  const DetailsScreen({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(title: 'Details'),
      body: Expanded(
        child: SizedBox(
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              children: [
                CachedNetworkImage(
                  imageUrl: model!.image,
                  progressIndicatorBuilder: (context, url, downloadProgress) =>
                      CircularProgressIndicator(value: downloadProgress.progress),
                  errorWidget: (context, url, error) => const Icon(Icons.error),
                ),
                const SizedBox(
                  height: 15,
                ),
                Text(
                  model!.title,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 20),
                ),
                Row(
                  children: [
                    const Text("rating : ",style: TextStyle(fontWeight: FontWeight.bold),),
                    Text(model!.rating.rate.toString()),
                    const Icon(Icons.star,color: Colors.yellow,)
                  ],
                ),
                Text(model!.description),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
