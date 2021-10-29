import 'package:flutter/material.dart';
import 'package:flutter_application_curso/model/contenido.dart';
import 'package:flutter_application_curso/widgets/rows.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.cyan),
      home: Scaffold(
        body: SafeArea(
          child: Container(
            margin: const EdgeInsets.only(bottom: 50),
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
        floatingActionButton: FloatingActionButton(
          elevation: 2,
          onPressed: () {
            setState(() {});
          },
          child: const Icon(
            Icons.refresh,
            color: Colors.white,
          ),
          backgroundColor: Colors.green,
        ),
      ),
    );
  }
}
