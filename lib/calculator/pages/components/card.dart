import 'package:flutter/material.dart';
import 'package:project_combo/calculator/controller/store_calculator.dart';
import 'package:project_combo/calculator/pages/components/row_card.dart';
import 'package:project_combo/calculator/pages/components/text_calculator.dart';
import 'package:project_combo/calculator/src/custom_decoration.dart';

//ignore: must_be_immutable
class CardCalculator extends StatelessWidget {

  StoreCalculator storeCalculator = StoreCalculator();

  CardCalculator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0,top: 10.0, right: 20.0),
      child: Container(
        decoration: CustomDecoration.decoration(),
        child: Column(
          children: [

            TextCalculator(storeCalculator: storeCalculator),

            //RowCard(titleBottomLeft: "MC", titleBottomLeftCenter: "MR", titleBottomRightCenter: "M−", titleBottomRight: "M+", storeCalculator: storeCalculator),

            //RowCard(titleBottomLeft: "C", titleBottomLeftCenter: "±", titleBottomRightCenter: "%", titleBottomRight: "√", storeCalculator: storeCalculator),

            RowCard(titleBottomLeft: "7", titleBottomLeftCenter: "8", titleBottomRightCenter: "9", titleBottomRight: "÷", storeCalculator: storeCalculator),

            RowCard(titleBottomLeft: "4", titleBottomLeftCenter: "5", titleBottomRightCenter: "6", titleBottomRight: "×", storeCalculator: storeCalculator),

            RowCard(titleBottomLeft: "1", titleBottomLeftCenter: "2", titleBottomRightCenter: "3", titleBottomRight: "-", storeCalculator: storeCalculator),

            RowCard(titleBottomLeft: "0", titleBottomLeftCenter: "C"/*"."*/, titleBottomRightCenter: "=", titleBottomRight: "+", storeCalculator: storeCalculator),

            const Padding(padding: EdgeInsets.only(top: 10.0)),

          ],
        ),
      ),
    );
  }
}



