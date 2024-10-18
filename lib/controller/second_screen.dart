import 'package:flutter/material.dart';

class SecondScreenController with ChangeNotifier {
  int count = 10;
  String name = "Nidhin";

  incrementcount() {
    count++;
    notifyListeners();
  }
}
