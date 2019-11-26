import 'package:flutter/material.dart';
import 'package:partial_gallery/screens/myReviews.dart';

class InspirationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      body: Center(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              color: Colors.white,
              width: double.infinity,
              height: 50,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  ActionChip(
                    padding: const EdgeInsets.only(left: 8, right: 8),
                    label: Text("Price Range"),
                    onPressed: () {
                      print("Price Range chip pressed");
                    },
                  ),
                  Chip(
                    label: Text("Category"),
                  )
                ],
              ),
            ),
            SizedBox(height: 10),
            Text("This is the Inspiration Screen"),
            RaisedButton(
              child: Text("My Reviews"),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MyReviews()));
              },
            )
          ],
        ),
      ),
    );
  }
}
