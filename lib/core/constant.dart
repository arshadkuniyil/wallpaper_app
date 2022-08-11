import 'package:flutter/material.dart';

import 'colors.dart';

final kCardDecoration = BoxDecoration(color: kCardBackgrounfColor);
final List<BoxShadow> kBoxshadow = [
  BoxShadow(
    color: Colors.grey.shade800,
    blurRadius: 2,
    spreadRadius: 2.0,
    offset: const Offset(
      2,
      2,
    ),
  )
];
final kMainGradient =  BoxDecoration(
  gradient: LinearGradient(
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
   
    colors: [Colors.grey.shade700, Colors.grey.shade300],
  ),
);
