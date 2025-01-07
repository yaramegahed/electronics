

import 'package:electronics/features/electronics/details/details_screen.dart';
import 'package:electronics/features/electronics/view/electronics_screen/screen.dart';
import 'package:flutter/material.dart';

import '../data/model/elec_model.dart';

class Layout extends StatelessWidget {

  final ProductTestModel? model;


   Layout({super.key,  this.model, });
   int currentIndex=0;

  @override
  Widget build(BuildContext context) {
    final List<Widget>screens = [
    const Screen(),
    DetailsScreen(model: model),
  ];
    List<Map<String, dynamic>> list = [
      {"title": "Home", "icon": Icons.home},
      {"title": "fav", "icon": Icons.favorite},
    ];
        return Scaffold(
          body: screens[currentIndex],
          bottomNavigationBar: BottomNavigationBar(
              currentIndex: currentIndex,
              onTap: (index) {
                currentIndex=index;
              },
              items: List.generate(
                list.length,
                    (index) => BottomNavigationBarItem(
                    icon: Icon(list[index]["icon"]),
                    label: list[index]["title"]),
              )),
        );
      }
  }

