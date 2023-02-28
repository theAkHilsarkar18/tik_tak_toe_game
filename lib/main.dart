
import 'package:flutter/material.dart';
import 'package:tik_tak_toe_game/homescreen.dart';

void main()
{
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/' : (context) => Homescreen(),
      },
    ),
  );
}