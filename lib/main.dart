import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: const DemoDIPROHomePage(),
    );
  }
}

class DemoDIPROHomePage extends StatelessWidget {
  const DemoDIPROHomePage({super.key});

  @override
  @override
  Widget build(BuildContext context) {
    double widthScreen = MediaQuery.of(context).size.width;
    double blurSigma = 40;
    double sizeCircle = widthScreen / 2 - blurSigma;

    return Container(
      color: Colors.white,
      child: Stack(
        children: [
          Positioned(
            top: 200,
            left: blurSigma,
            child: Container(
              height: sizeCircle,
              width: sizeCircle,
              decoration: BoxDecoration(
                color: Colors.red.withOpacity(0.8),
                borderRadius: BorderRadius.circular(sizeCircle),
              ),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: blurSigma, sigmaY: blurSigma),
                child: Container(
                  decoration: BoxDecoration(color: Colors.white.withOpacity(0.0)),
                ),
              ),
            ),
          ),
          Positioned(
            top: 250,
            right: 0,
            child: Container(
              height: sizeCircle,
              width: sizeCircle,
              decoration: BoxDecoration(
                color: Colors.blue.withOpacity(0.25),
                borderRadius: BorderRadius.circular(sizeCircle),
              ),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: blurSigma, sigmaY: blurSigma),
                child: Container(
                  decoration: BoxDecoration(color: Colors.white.withOpacity(0.0)),
                ),
              ),
            ),
          ),
          Positioned(
            top: 100,
            right: blurSigma + 50,
            child: Image.asset(
              'assets/images/swift.png',
              height: 200,
              fit: BoxFit.fitWidth,
            ),
          ),
        ],
      ),
    );
  }
}
