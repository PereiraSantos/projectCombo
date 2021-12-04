import 'package:flutter/material.dart';
import 'package:project_combo/calculator/controller/store_calculator.dart';
import 'package:project_combo/calculator/pages/components/bottom_row_card.dart';

//ignore: must_be_immutable
class RowCard extends StatelessWidget {

  String? titleBottomLeft;
  String? titleBottomLeftCenter;
  String? titleBottomRightCenter;
  String? titleBottomRight;
  StoreCalculator storeCalculator;

   RowCard({Key? key,
     this.titleBottomLeft,
     this.titleBottomLeftCenter,
     this.titleBottomRightCenter,
     this.titleBottomRight, required this.storeCalculator}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(left: 8.0, top: 20, right: 8.0),
      child: SizedBox(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.max,
          children:  [

            BottomRowCard(title: titleBottomLeft, store: storeCalculator),

            const Padding(padding: EdgeInsets.only(left: 15.0)),

            BottomRowCard(title: titleBottomLeftCenter,  store: storeCalculator),

            const Padding(padding: EdgeInsets.only(left: 15.0)),

            BottomRowCard(title: titleBottomRightCenter,  store: storeCalculator),

            const Padding(padding: EdgeInsets.only(left: 15.0)),

            BottomRowCard(title: titleBottomRight,  store: storeCalculator),
          ],
        ),
      ),
    );
  }
}

