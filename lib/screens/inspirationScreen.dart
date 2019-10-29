import 'package:flutter/material.dart';
import 'package:partial_gallery/screens/myReviews.dart';

class InspirationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              child: Text("This is the Inspiration Screen"),
            ),
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
