import 'package:flutter/material.dart';
import 'package:partial_gallery/screens/myRentals.dart';

class MyCollectionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.teal,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              child: Text("This is the My Collection Screen"),
            ),
            RaisedButton(
              child: Text("My Rentals"),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MyRentals()));
              },
            )
          ],
        ),
      ),
    );
  }
}
