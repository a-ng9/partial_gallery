import 'package:flutter/material.dart';
import 'package:partial_gallery/screens/myReviews.dart';

class MyRentals extends StatefulWidget {
  @override
  _MyRentalsState createState() => _MyRentalsState();
}

class _MyRentalsState extends State<MyRentals> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        // backgroundColor: Colors.lightBlue,
        appBar: AppBar(
          title: Text("My Rentals"),
          bottom: TabBar(
            tabs: <Widget>[
              Tab(
                text: "Current Rentals",
              ),
              Tab(
                text: "Past Rentals",
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            Container(
              color: Colors.deepOrange[100],
              child: Center(
                child: Text(
                  "First Page",
                ),
              ),
            ),
            Container(
              color: Colors.blueGrey[100],
              child: Center(
                child: Text(
                  "Second Page",
                ),
              ),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.rate_review),
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => MyReviews()));
          },
        ),
      ),
    );
  }
}
