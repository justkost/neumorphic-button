import 'package:flutter/material.dart';

class NeumorphicContainer extends StatelessWidget {
  final Widget child;
  final double bevel;
  final Color color;

  NeumorphicContainer({
    Key key,
    this.child,
    this.bevel = 10.0,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final color = this.color ?? Theme.of(context).backgroundColor;

    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(bevel * 3),
        color: Colors.grey.shade200,
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Color.lerp(color, Colors.black, 0.12),
            color,
            color,
            Color.lerp(color, Colors.white, 0.4),
          ],
          stops: [
            0.0,
            0.4,
            0.6,
            1.0,
          ],
        ),
        boxShadow: [
          BoxShadow(
            blurRadius: bevel,
            color: Color.lerp(color, Colors.white, 0.6),
            offset: Offset(-4, -4),
          ),
          BoxShadow(
            blurRadius: bevel,
            color: Color.lerp(color, Colors.black, 0.3),
            offset: Offset(4, 4),
          ),
        ],
      ),
      child: child,
    );
  }
}
