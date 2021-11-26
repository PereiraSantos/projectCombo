import 'package:flutter/material.dart';

class PanelCard extends StatelessWidget {

  String title;
  dynamic rote;

  PanelCard({Key? key, required this.title, required this.rote}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: SizedBox(
        height: 100,
        child: Column(

          children: [

            const Icon(Icons.add),

            ElevatedButton(onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => rote));
              }, child: Text(title)),
          ],
          ),
        ),
      );
  }
}

