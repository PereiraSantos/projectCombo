import 'package:flutter/material.dart';
import 'package:project_combo/calculator/controller/store_calculator.dart';
import 'package:project_combo/calculator/src/custom_decoration.dart';

//ignore: must_be_immutable
class BottomRowCard extends StatelessWidget {

  String? title;
  StoreCalculator store;
  
  BottomRowCard({Key? key,  this.title, required this.store}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: InkWell(
        onTap: () => store.getValue(title!),
        child: Container(
          height: 40,
          decoration: CustomDecoration.decoration(),
          child: Center(child: Text(title!, style: const TextStyle(fontSize: 20, color: Colors.black54),)),
        ),
      ),
    );
  }
}

