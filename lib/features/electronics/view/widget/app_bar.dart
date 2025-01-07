import 'package:flutter/material.dart';

AppBar appBar({required String title}) {


  return AppBar(
    backgroundColor: Colors.grey.shade400,
    toolbarHeight: 60,
    title:  Text(
      title,
      style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
    ),
    centerTitle: true,
  );
}
