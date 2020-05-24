import 'package:flutter/material.dart';

class NeumorphicContainer extends StatefulWidget {
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
  _NeumorphicContainerState createState() => _NeumorphicContainerState();
}

class _NeumorphicContainerState extends State<NeumorphicContainer> {
  bool _isPressed = false;

  @override
  Widget build(BuildContext context) {
    final color = widget.color ?? Theme.of(context).backgroundColor;

    return Listener(
      onPointerDown: (PointerDownEvent e) {
        setState(() {
          _isPressed = true;
        });
      },
      onPointerUp: (PointerUpEvent e) {
        setState(() {
          _isPressed = false;
        });
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 50),
        padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(widget.bevel * 3),
          color: Colors.grey.shade200,
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              _isPressed ?
                Color.lerp(color, Colors.black, 0.1) :
                Color.lerp(color, Colors.white, 0.3),
              color,
              color,
              _isPressed ?
                Color.lerp(color, Colors.white, 0.3) :
                Color.lerp(color, Colors.black, 0.1),
            ],
            stops: [
              0.0,
              0.4,
              0.6,
              1.0,
            ],
          ),
          boxShadow: _isPressed ? null : [
            BoxShadow(
              blurRadius: widget.bevel,
              color: Color.lerp(color, Colors.white, 0.7),
              offset: Offset(-4, -4),
            ),
            BoxShadow(
              blurRadius: widget.bevel,
              color: Color.lerp(color, Colors.black, 0.3),
              offset: Offset(4, 4),
            ),
          ],
        ),
        child: widget.child,
      ),
    );
  }
}
