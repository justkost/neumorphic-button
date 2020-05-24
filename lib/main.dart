import 'package:flutter/material.dart';
import 'package:neumorphic/widgets/NeumorphicContainer.dart';

void main() {
  runApp(NeumorphicApp());
}

class NeumorphicApp extends StatelessWidget {
  final baseColor = Colors.blueGrey[100];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Neumorphic App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        backgroundColor: baseColor,
        scaffoldBackgroundColor: baseColor,
        dialogBackgroundColor: baseColor,
      ),
      home: Scaffold(
        backgroundColor: baseColor,
        body: Center(
          child: NeumorphicContainer(
            child: Text(
              'Neumorphic',
              style: TextStyle(
                color: Color.lerp(baseColor, Colors.black, 0.4),
                fontSize: 18.0,
                fontWeight: FontWeight.w500,
              )
            ),
            bevel: 10.0,
          ),
        )
      ),
    );
  }
}