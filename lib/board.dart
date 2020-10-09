import 'package:flutter/material.dart';

class Board extends StatefulWidget {
  @override
  _BoardState createState() => _BoardState();
}

class _BoardState extends State<Board> with SingleTickerProviderStateMixin {
  AnimationController controller;
  Animation<Offset> _animation;
  @override
  void initState() {
    controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 3),
    );
    CurvedAnimation curvedAnimation =
        CurvedAnimation(parent: controller, curve: Curves.easeOut);
    _animation = new Tween<Offset>(
      begin: const Offset(-100.0, 0.0),
      end: const Offset(100.0, 0.0),
    ).animate(curvedAnimation)
      ..addListener(() {
        setState(() {});
      });
    controller.repeat(reverse: true);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Transform.translate(
          offset: _animation.value,
          child: Container(
              width: 10500,
              height: 500,
              child: Center(
                child: Image.asset(
                  'assets/long-board.png',
                  height: 500,
                  fit: BoxFit.fitHeight,
                ),
              )),
        ),
      ]),
    );
  }
}
