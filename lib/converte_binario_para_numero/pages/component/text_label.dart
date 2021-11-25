import 'package:flutter/material.dart';

//ignore: must_be_immutable
class TextLabel extends StatelessWidget {

  String titleComponent;

  TextLabel({Key? key, required this.titleComponent}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: const EdgeInsets.only(left: 10.0),
        child: Text(titleComponent, style: const TextStyle(fontSize: 20, color: Colors.grey), textAlign: TextAlign.left, ),
      ),
    );
  }
}

