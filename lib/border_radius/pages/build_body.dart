
import 'package:flutter/material.dart';
import 'package:project_combo/border_radius/controller/store.dart';
import 'package:project_combo/border_radius/pages/indication.dart';
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
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Visibility(
                            visible: store.indicationTopRight,
                              child: Indication(iconParam: Icons.north_east_outlined)
                          ),
                          Visibility(
                              visible: store.indicationBottomRight,
                              child: Indication(iconParam: Icons.south_east_outlined)
                          ),
                          Visibility(
                              visible: store.indicationBottomLeft,
                              child: Indication(iconParam: Icons.call_received_outlined)
                          ),
                          Visibility(
                              visible: store.indicationTopLeft,
                              child: Indication(iconParam: Icons.north_west_outlined)
                          )
                        ],
                      ),
                    ),
                  ),
                ),

                CustomizeSlider(value: store.valueTopLeft, onChanged: (double value) => store.modifiesTopLeft(value)),

                CustomizeSlider(value: store.valueTopRight, onChanged: (double value) => store.modifiesTopRight(value)),

                CustomizeSlider(value: store.valueBottomLeft, onChanged: (double value) => store.modifiesBottomLeft(value)),

                CustomizeSlider(value: store.valueBottomRight, onChanged: (double value) => store.modifiesBottomRight(value)),

              ],
            );
          }
        ),
      ),
    );
  }
}


