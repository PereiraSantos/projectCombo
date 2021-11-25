import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:project_combo/converte_binario_para_numero/controller/store.dart';

//ignore: must_be_immutable
class InputInformation extends StatelessWidget {

  TextEditingController binary;
  Store store;

  InputInformation({Key? key, required this.binary, required this.store}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        controller: binary,
        keyboardType: TextInputType.number,
        maxLength: 8,
        inputFormatters: [
          FilteringTextInputFormatter.allow(RegExp(r'[0-1]'))
        ],
        decoration: const InputDecoration(
            label: Text("Binario", style: TextStyle(fontSize: 20, color: Colors.grey)),
          border: OutlineInputBorder(borderSide: BorderSide(color: Colors.green, style:  BorderStyle.solid, width: 1))
        ),
        onChanged: (value) => store.concatenate(value),
      ),
    );
  }
}

