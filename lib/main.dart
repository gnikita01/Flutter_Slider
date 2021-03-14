import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart' show timeDilation;
import 'package:carousel_pro/carousel_pro.dart';


class Tom extends StatelessWidget {
  Widget build(BuildContext context) {
    timeDilation = 10.0;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Tom & Jerry'),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: Carousel(
            images: [
              NetworkImage('https://www.tomandjerrychaseasia.com/m/zt/20200522142810/img/characters/pic/tom_be2af94.png'),
              NetworkImage('https://www.pngkey.com/png/detail/62-628565_provided-by-owner-jerry-mouse.png'),
            ],
            dotSize: 0.0,
            dotSpacing: 15.0,
            dotColor: Colors.white,
            indicatorBgPadding: 5.0,
            dotBgColor: Colors.white.withOpacity(0.5),
            borderRadius: false,
            moveIndicatorFromBottom: 180.0,
            noRadiusForIndicator: true,
            overlayShadow: true,
            overlayShadowColors: Colors.white,
            overlayShadowSize: 0.7,
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(home: Tom()));
}
