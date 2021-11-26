import 'package:flutter/material.dart';
import 'package:project_combo/border_radius/pages/build_body.dart';
import 'package:project_combo/converte_binario_para_numero/pages/home_page.dart';
import 'package:project_combo/pages/components/panel_card.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Combo de projeto")),
      body:  SingleChildScrollView(
        child: Align(
          alignment: Alignment.center,
          child: Wrap(
            children:  [

              PanelCard(title: "Converte Binario", rote: HomePage()),

              PanelCard(title: "Border Radius", rote: BuildBody()),


            ],
          ),
        ),
      )
    );
  }
}

