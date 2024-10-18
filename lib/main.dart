import 'package:colorchange/controller/home_screen_controller.dart';
import 'package:colorchange/controller/second_screen.dart';

import 'package:colorchange/view/second_screen/second_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => HomeScreenController(),
        ),
        ChangeNotifierProvider(
          create: (context) => SecondScreenController(),
        )
      ],
      child: MaterialApp(
        home: HomeScreen1(),
      ),
    );
  }
}
