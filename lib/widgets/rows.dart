import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_application_curso/model/contenido.dart';
import 'package:lottie/lottie.dart';

// ignore: must_be_immutable
class ScreanRow extends StatelessWidget {
  final Contenido img1;
  ScreanRow({required this.img1, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            child: Container(
                margin: const EdgeInsets.all(16),
                transform: Matrix4.rotationZ(0.1),
                decoration: deco.copyWith(),
                child: Lottie.network(
                  img1.assetNet![0].toString(),
                ))),
        Expanded(
            child: Container(
                margin: const EdgeInsets.all(16),
                decoration: deco.copyWith(
                  shape: BoxShape.circle,
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black,
                      offset: Offset(6, 6),
                      blurRadius: 2.5,
                    )
                  ],
                ),
                child: Lottie.network(
                  img1.assetNet![1].toString(),
                ))),
        Expanded(
            child: Container(
                margin: const EdgeInsets.all(10),
                decoration: deco.copyWith(shape: BoxShape.rectangle),
                child: Lottie.network(img1.assetNet![2].toString()))),
      ],
    );
  }

  BoxDecoration deco = BoxDecoration(
    color: Colors.primaries[Random().nextInt(Colors.primaries.length)],
    border: Border.all(style: BorderStyle.solid),
    //shape: BoxShape.circle,
  );
}
