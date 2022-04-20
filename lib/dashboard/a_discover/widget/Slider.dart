import 'package:flutter/material.dart';

class SlideAble extends StatefulWidget {
  const SlideAble({Key? key}) : super(key: key);

  @override
  State<SlideAble> createState() => _SlideAbleState();
}

class _SlideAbleState extends State<SlideAble> {
  double _currentSliderValue = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Slider(
      value: _currentSliderValue,
      max: 100,
      divisions: 5,
      label: _currentSliderValue.round().toString(),
      onChanged: (double value) {
        setState(() {
          _currentSliderValue = value;
        });
      },
    ));
  }
}
