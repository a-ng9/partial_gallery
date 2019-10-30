import 'package:flutter/material.dart';

class MyReviews extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Reviews"),
      ),
      body: Center(
        child: Container(
          // color: Colors.yellow,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[Text("All data on the reviews goes here")],
          ),
        ),
      ),
    );
  }
}
