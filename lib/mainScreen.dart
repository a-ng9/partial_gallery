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
        title: Text("Partial"),
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
      body: Container(
        child: listScreens[_selectedIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Browse'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.photo),
            title: Text('Inspirations'),
          ),
          BottomNavigationBarItem(
            activeIcon: Icon(Icons.favorite),
            icon: Icon(Icons.favorite_border),
            title: Text('My Collection'),
          ),
          BottomNavigationBarItem(
            activeIcon: Icon(Icons.person),
            icon: Icon(Icons.person_outline),
            title: Text('Account'),
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Color.fromRGBO(249, 70, 100, 1),
        unselectedItemColor: Colors.black,
        onTap: _onItemTapped,
        showUnselectedLabels: true,
      ),
    );
  }
}
