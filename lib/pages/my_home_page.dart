import 'package:flutter/material.dart';
import 'package:project_combo/border_radius/pages/build_body.dart';
import 'package:project_combo/converte_binario_para_numero/pages/home_age.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("teste")),
      body: Column(
        children: [
          Container(
            child: ElevatedButton(onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HomePage()),
              );
            }, child: Text("Converte Binario"),

            ),
          ),
          Container(
            child: ElevatedButton(onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => BuildBody()),
              );
            }, child: Text("Border Radius"),

            ),
          ),
        ],
      ),
    );
  }
}

