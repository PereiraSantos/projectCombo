
import 'package:flutter/material.dart';
import 'package:project_combo/border_radius/controller/store.dart';
import 'package:project_combo/border_radius/pages/customize_slider.dart';

class BuildBody extends StatelessWidget{

  final Store store = Store();

  BuildBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Border radius")),
      body: SingleChildScrollView(
        child: AnimatedBuilder(
          animation: store,
          builder: (context, _) {
            return  Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [

                const Padding(padding: EdgeInsets.only(top: 25)),

                Center(
                  child: ClipRRect(
                    borderRadius:  BorderRadius.only(
                        topLeft: Radius.circular(store.valueTopLeft),
                        topRight: Radius.circular(store.valueTopRight),
                        bottomLeft: Radius.circular(store.valueBottomLeft),
                        bottomRight: Radius.circular(store.valueBottomRight)
                    ),
                    child: Container(
                      width: 150,
                      height: 150,
                      color: Colors.blueAccent,
                    ),
                  ),
                ),

                const Padding(padding: EdgeInsets.only(top: 10)),

                CustomizeSlider(value: store.valueTopLeft, onChanged: (double value) => store.modifiesTopLeft(value)),

                const Padding(padding: EdgeInsets.only(top: 10)),

                CustomizeSlider(value: store.valueTopRight, onChanged: (double value) => store.modifiesTopRight(value)),

                const Padding(padding: EdgeInsets.only(top: 10)),

                CustomizeSlider(value: store.valueBottomLeft, onChanged: (double value) => store.modifiesBottomLeft(value)),

                const Padding(padding: EdgeInsets.only(top: 10)),

                CustomizeSlider(value: store.valueBottomRight, onChanged: (double value) => store.modifiesBottomRight(value)),

              ],
            );
          }
        ),
      ),
    );
  }
}


