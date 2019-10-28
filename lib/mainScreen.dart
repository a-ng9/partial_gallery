import 'package:flutter/material.dart';
import 'package:partial_gallery/screens/accountScreen.dart';
import 'package:partial_gallery/screens/browseScreen.dart';
import 'package:partial_gallery/screens/inspirationScreen.dart';
import 'package:partial_gallery/screens/myCollectionScreen.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  List<Widget> listScreens = [
    BrowseScreen(),
    InspirationScreen(),
    MyCollectionScreen(),
    AccountScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(249, 70, 100, 1),
        // title: Text("Main Menu"),
        actions: <Widget>[
          IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ),
              onPressed: () {
                print("search button pressed");
              })
        ],
      ),
      backgroundColor: Colors.grey,

      body: Container(child: listScreens[_selectedIndex]),
      // backgroundColor: Color.fromRGBO(238, 230, 248, 1),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Browse'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.assignment),
            title: Text('Inspirations'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today),
            title: Text('My Collection'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today),
            title: Text('Account'),
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Color.fromRGBO(249, 70, 100, 1),
        unselectedItemColor: Colors.black,
        onTap: _onItemTapped,
      ),
    );
  }
}
