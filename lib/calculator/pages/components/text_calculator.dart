import 'package:flutter/material.dart';
import 'package:project_combo/calculator/controller/store_calculator.dart';
import 'package:project_combo/calculator/src/custom_decoration.dart';

//ignore: must_be_immutable
class TextCalculator extends StatelessWidget {

  StoreCalculator storeCalculator;

  TextCalculator({Key? key, required this.storeCalculator}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10.0, top: 10.0, right: 10.0),
      child: AnimatedBuilder(
        animation: storeCalculator,
        builder: (context, _){
          return Container(
              height: 40,
              width: MediaQuery.of(context).size.width,
              decoration: CustomDecoration.decoration(),
              child: Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: Text(storeCalculator.value, style: const TextStyle(fontSize: 20, color: Colors.black54),
                  ),
                ),
              )
          );
        },
      ),
    );
  }
}

