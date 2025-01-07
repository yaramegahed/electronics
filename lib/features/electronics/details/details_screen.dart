import 'package:cached_network_image/cached_network_image.dart';
import 'package:electronics/features/electronics/data/model/elec_model.dart';
import 'package:flutter/material.dart';

import '../view/widget/app_bar.dart';

class DetailsScreen extends StatelessWidget {
  final ProductTestModel? model;

  const DetailsScreen({super.key, this.model});

  @override
  Widget build(BuildContext context) {
    if (model == null) {
      return Scaffold(
        appBar: appBar(title: 'Details'),
        body: Center(
          child: Text('No data available'),
        ),
      );
    }
    return Scaffold(
      appBar: appBar(title: 'Details'),
      body: SizedBox(
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
              Row(
                children: [
                  Text(
                    model!.title,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  const Spacer(),
                  Text(model!.rating.rate.toString()),
                ],
              ),
              Text(model!.description),
            ],
          ),
        ),
      ),
    );
  }
}
