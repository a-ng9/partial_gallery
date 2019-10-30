import 'package:flutter/material.dart';
import 'package:partial_gallery/utils/styles.dart';

class BrowseScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            //first title
            Padding(
              padding: const EdgeInsets.only(top: 10.0, left: 10),
              child: Text("Personalised Recommendations:"),
            ),
            //Horizontal scroll
            Container(
              padding: const EdgeInsets.all(10),
              height: 200,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Container(width: 160, color: Colors.blueGrey),
                  Container(width: 160, color: Colors.brown),
                  Container(width: 160, color: Colors.blue),
                  Container(width: 160, color: Colors.red),
                  Container(width: 160, color: Colors.yellow),
                  Container(width: 160, color: Colors.green)
                ],
              ),
            ),
            //Line in the middle (line that seperates the perso and the new pieces)
            Container(
              color: Styles.getPinkMaterialColor,
              height: 1,
              width: MediaQuery.of(context).size.width,
            ),
            //second title
            Padding(
              padding: const EdgeInsets.only(top: 10, left: 10),
              child: Text("New Pieces by Watched Artists:"),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 10),
              child: Column(
                children: <Widget>[
                  Container(height: 160, color: Colors.red),
                  Container(height: 160, color: Colors.orange),
                  Container(height: 160, color: Colors.yellow),
                  Container(height: 160, color: Colors.green),
                  Container(height: 160, color: Colors.teal),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
