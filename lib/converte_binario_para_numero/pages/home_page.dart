
import 'package:flutter/material.dart';
import 'package:project_combo/converte_binario_para_numero/controller/store.dart';
import 'package:project_combo/converte_binario_para_numero/pages/component/input_infomation.dart';
import 'package:project_combo/converte_binario_para_numero/pages/component/set_number.dart';
import 'package:project_combo/converte_binario_para_numero/pages/component/text_label.dart';

class HomePage extends StatelessWidget {

  HomePage({Key? key}) : super(key: key);

  final Store store = Store();

  final TextEditingController binary = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Converte binario")),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [

              const Padding(padding: EdgeInsets.only(top:10)),

              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: RichText(
                    text: const TextSpan(
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.black,
                      ),
                      children:  <TextSpan>[
                        TextSpan(text: 'Apenas', style: TextStyle(fontWeight: FontWeight.normal, color: Colors.black54)),
                        TextSpan(text: ' 0', style: TextStyle(fontWeight: FontWeight.bold)),
                        TextSpan(text: ' e', style: TextStyle(fontWeight: FontWeight.normal, color: Colors.black54)),
                        TextSpan(text: ' 1', style: TextStyle(fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ),
                ),
              ),

              const Padding(padding: EdgeInsets.only(top:10)),

              InputInformation(binary: binary, store: store),

              const  Padding(padding: EdgeInsets.only(top:10)),

              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                      width: MediaQuery.of(context).size.width*0.28,
                      child: TextLabel(titleComponent: "Decimal:")),

                  SizedBox(
                      width: MediaQuery.of(context).size.width*0.60,
                      child: SetNumber(store: store)),
                ],
              )
          ],
          ),
        ),
    );
  }
}

