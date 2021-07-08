import 'package:flutter/material.dart';

class Heart extends StatefulWidget {
  @override
  _HeartState createState() => _HeartState();
}

class _HeartState extends State<Heart> with SingleTickerProviderStateMixin{

  bool isFav = false;
  AnimationController _controller;
  Animation<Color> _color_animation;
  Animation<double> _size_animation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      duration: Duration(milliseconds: 300),
      vsync: this
    );

    _color_animation = ColorTween(begin: Colors.grey[400], end: Colors.red).animate(_controller);

    _size_animation = TweenSequence(
      <TweenSequenceItem<double>>[
        TweenSequenceItem<double>(
          tween: Tween<double>(begin: 30, end: 50),
          weight: 50
        ),
        TweenSequenceItem<double>(
          tween: Tween<double>(begin: 50, end: 30),
          weight: 50
        ),
      ]
    ).animate(_controller);


    _controller.addListener(() {

 
    });

    _controller.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        setState(() {
          isFav = true;
        });
      }

      if(status == AnimationStatus.dismissed) {
        setState(() {
          isFav = false;
        });
      }
    });
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (BuildContext context, _) {
        return IconButton(
          icon: Icon(
            Icons.favorite,
            color: _color_animation.value,
            size: _size_animation.value,
          ),
          onPressed: () {
            isFav ? _controller.reverse() : _controller.forward();
          },
        );
      }
    );
  }
}
