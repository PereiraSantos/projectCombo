import 'package:flutter/material.dart';

//ignore: must_be_immutable
class Indication extends StatelessWidget {

  IconData iconParam;

  Indication({Key? key, required this.iconParam}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 80,
      height: 80,
      child: Icon(iconParam, size: 60, color:  Colors.white),
    );
  }
}

