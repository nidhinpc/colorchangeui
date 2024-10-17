import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeScreenController with ChangeNotifier {
  Color currentColor = Colors.white;

  static List<Color> colors = [
    Colors.yellow,
    Colors.red,
    Colors.green,
    Colors.blue,
    Colors.purple
  ];

  changeColor(Color newcolor) {
    currentColor = newcolor;
    notifyListeners();
  }
}
