import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class PanelCard extends StatelessWidget {

  String title;
  dynamic rote;
  String image;

  PanelCard({Key? key, required this.title, required this.rote, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: SizedBox(
        child: Column(
          children: [
            const Padding(padding: EdgeInsets.only(top: 10.0)),
            Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.fill,
                  image: AssetImage(image),
                ),
                border: Border.all(
                    width: 1.0,
                  color: Colors.blue
                ),
                borderRadius: const BorderRadius.all(Radius.circular(15.0)),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 8.0, right: 8.0),
              child: ElevatedButton(
                  onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => rote));
                },
                child: Text(title),
                style: ElevatedButton.styleFrom(
                  primary: Colors.blue,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  elevation: 15.0,
                ),
              ),
            ),
          ],
          ),
        ),
      );
  }
}

