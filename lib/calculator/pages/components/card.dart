import 'package:flutter/material.dart';

//ignore: must_be_immutable
class CardCalculator extends StatelessWidget {

  CardCalculator({Key? key}) : super(key: key);

  BoxDecoration customDecoration =  BoxDecoration(
    color: Colors.white,
    borderRadius: const BorderRadius.only(
        topLeft: Radius.circular(10),
        topRight: Radius.circular(10),
        bottomLeft: Radius.circular(10),
        bottomRight: Radius.circular(10)
    ),
    boxShadow: [
      BoxShadow(
        color: Colors.grey.withOpacity(0.5),
        spreadRadius: 5,
        blurRadius: 7,
        offset: const Offset(0, 3), // changes position of shadow
      ),
    ],
  );

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0,top: 10.0, right: 20.0),
      child: Container(
        height: 400,
        decoration: customDecoration,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10.0, top: 10.0, right: 10.0),
              child: Container(
                height: 40,
                decoration: customDecoration,
              ),
            )
          ],
        ),
      ),
    );
  }
}

