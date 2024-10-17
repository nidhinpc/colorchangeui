import 'package:colorchange/controller/home_screen_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Color? colorChange;
    return Scaffold(
      backgroundColor: context.watch<HomeScreenController>().currentColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            InkWell(
              onTap: () {
                context
                    .read<HomeScreenController>()
                    .changeColor(HomeScreenController.colors[4]);
              },
              child: Container(
                height: 50,
                width: 300,
                decoration: BoxDecoration(
                    color: HomeScreenController.colors[4],
                    border: Border.all(color: Colors.black, width: 2)),
              ),
            ),
            InkWell(
              onTap: () {
                context
                    .read<HomeScreenController>()
                    .changeColor(HomeScreenController.colors[0]);
              },
              child: Container(
                height: 50,
                width: 300,
                decoration: BoxDecoration(
                    color: HomeScreenController.colors[0],
                    border: Border.all(color: Colors.black, width: 2)),
              ),
            ),
            InkWell(
              onTap: () {
                context
                    .read<HomeScreenController>()
                    .changeColor(HomeScreenController.colors[1]);
              },
              child: Container(
                height: 50,
                width: 300,
                decoration: BoxDecoration(
                    color: HomeScreenController.colors[1],
                    border: Border.all(color: Colors.black, width: 2)),
              ),
            ),
            InkWell(
              onTap: () {
                context
                    .read<HomeScreenController>()
                    .changeColor(HomeScreenController.colors[2]);
              },
              child: Container(
                height: 50,
                width: 300,
                decoration: BoxDecoration(
                    color: HomeScreenController.colors[2],
                    border: Border.all(color: Colors.black, width: 2)),
              ),
            ),
            InkWell(
              onTap: () {
                context
                    .read<HomeScreenController>()
                    .changeColor(HomeScreenController.colors[3]);
              },
              child: Container(
                height: 50,
                width: 300,
                decoration: BoxDecoration(
                    color: HomeScreenController.colors[3],
                    border: Border.all(color: Colors.black, width: 2)),
              ),
            )
          ],
        ),
      ),
    );
  }
}
