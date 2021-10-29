import 'package:flutter/material.dart';
import 'package:flutter_application_curso/model/contenido.dart';
import 'package:flutter_application_curso/widgets/rows.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.cyan),
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: Column(
              children: [
                Expanded(
                  child: ScreanRow(img1: imgtop),
                ),
                Expanded(
                  child: ScreanRow(img1: imgmiddle),
                ),
                Expanded(
                  child: ScreanRow(img1: imgBotton),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
