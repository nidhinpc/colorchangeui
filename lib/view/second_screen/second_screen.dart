import 'package:colorchange/controller/second_screen.dart';
import 'package:colorchange/view/home_screen/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen1 extends StatelessWidget {
  HomeScreen1({super.key});

  @override
  Widget build(BuildContext context) {
    print("rebuild scaffold");
    final providerobj = context.watch<SecondScreenController>();
    return Scaffold(
      appBar: AppBar(
        actions: [
          InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HomeScreen(),
                    ));
              },
              child: Icon(Icons.arrow_back))
        ],
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        context.read<SecondScreenController>().incrementcount();
      }),
      body: Center(
          child: Consumer<SecondScreenController>(
        builder: (context, Providerobj, child) => Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Text(
                providerobj.count.toString(),
                style: TextStyle(fontSize: 30),
              ),
            ),
            Center(
              child: Text(providerobj.name.toString()),
            ),
          ],
        ),
      )),
    );
  }
}
