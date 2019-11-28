import 'package:flutter/material.dart';
import 'package:partial_gallery/utils/styles.dart';
import 'package:partial_gallery/widgets/filter_search.dart';
// import 'package:partial_gallery/widgets/search_chip.dart';

class BrowseScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            ////"ChipFilters" is made into a different class to make this dart file more organised
            ChipFilters(),

            ///Pink line in the middle (line that seperates the perso and the new pieces)
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
              child: Column(children: <Widget>[
                Container(height: 160, color: Colors.red),
                Container(height: 160, color: Colors.orange),
                Container(height: 160, color: Colors.yellow),
                Container(height: 160, color: Colors.green),
                Container(height: 160, color: Colors.teal),
              ]),
            )
          ],
        ),
      ),
    );
  }
}
