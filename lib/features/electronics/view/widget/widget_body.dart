import 'package:cached_network_image/cached_network_image.dart';
import 'package:electronics/features/electronics/data/model/elec_model.dart';
import 'package:electronics/features/electronics/details/details_screen.dart';
import 'package:flutter/material.dart';

class WidgetBody extends StatelessWidget {
  final ProductTestModel model;

  const WidgetBody({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => const DetailsScreen(),));},
      child: Container(
        padding: const EdgeInsets.only(top: 10,left: 10,right: 10),
        decoration: BoxDecoration(
            color: Colors.red.shade100,
            borderRadius: BorderRadius.circular(15),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.5),
                blurRadius: 7,
              ),
            ]),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
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
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            Expanded(
              child: Row(
                children: [
                  const Text(
                    "rating : ",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    model.rating.rate.toString(),
                    maxLines: 1,
                  ),
                  const Icon(
                    Icons.star,
                    color: Colors.yellow,
                  ),
                  Spacer(),
                  IconButton(
                    color: Colors.red,
                    onPressed: () {},
                    icon: Icon(Icons.favorite),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
