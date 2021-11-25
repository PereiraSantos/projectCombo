
import 'package:flutter/material.dart';
import 'package:project_combo/converte_binario_para_numero/controller/store.dart';

//ignore: must_be_immutable
class SetNumber extends StatelessWidget {

  Store store;

  SetNumber({required this.store});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: AnimatedBuilder(
          animation: store,
          builder: (context, _) {
            return Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: Text(
                '${store.value}', style: const TextStyle(fontSize: 20, color: Colors.black),
              ),
            );
          }),
    );
  }
}

