import 'package:flutter/material.dart';
import 'package:neumorphic/widgets/NeumorphicContainer.dart';

void main() {
  runApp(NeumorphicApp());
}

class NeumorphicApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Neumorphic App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        backgroundColor: Colors.blueGrey.shade200,
        scaffoldBackgroundColor: Colors.blueGrey.shade200,
        dialogBackgroundColor: Colors.blueGrey.shade200,
      ),
      home: Scaffold(
        backgroundColor: Colors.blueGrey.shade200,
        body: Center(
          child: NeumorphicContainer(
            child: Text(
              'Neumorphic',
              style: TextStyle(
                color: Color.lerp(Colors.blueGrey.shade200, Colors.black, 0.4),
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