import 'package:flutter/material.dart';

//ignore: must_be_immutable
class CustomizeSlider extends StatelessWidget {

  Function(double value) onChanged;
  double value;

  CustomizeSlider({Key? key, required this.onChanged, required this.value}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Slider(
      value: value,
      min: 0,
      max: 100,
      divisions: 90,
      label: value.round().toString(),
      onChanged: (double value) => onChanged(value)
    );
  }
}


