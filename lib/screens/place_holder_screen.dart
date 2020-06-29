import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../screens/home_screen.dart';
import '../screens/trip_screen.dart';

class PlaceHolderScreen extends StatefulWidget {
  PlaceHolderScreen({Key key}) : super(key: key);

  @override
  _PlaceHolderScreenState createState() => _PlaceHolderScreenState();
}

class _PlaceHolderScreenState extends State<PlaceHolderScreen> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    HomeScreen(),
    TripScreen(),
    Container(),
    Container(),
    Container(),
  ];

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_currentIndex],
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          canvasColor: Colors.white,
          primaryColor: Colors.white,
        ),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Theme.of(context).primaryColor,
          unselectedItemColor: Colors.grey,
          selectedFontSize: 13.0,
          elevation: 20,
          onTap: onTabTapped,
          currentIndex: _currentIndex,
          items: [
            BottomNavigationBarItem(
                icon: Icon(FontAwesomeIcons.home, size: 20),
                title: Text("Home")),
            BottomNavigationBarItem(
                icon: Icon(FontAwesomeIcons.tripadvisor, size: 20),
                title: Text("Trip")),
            BottomNavigationBarItem(
                icon: Icon(FontAwesomeIcons.user, size: 20),
                title: Text("Driver")),
            BottomNavigationBarItem(
                icon: Icon(FontAwesomeIcons.truck, size: 20),
                title: Text("Vehicle")),
            BottomNavigationBarItem(
                icon: Icon(FontAwesomeIcons.compass, size: 20),
                title: Text("Track")),
          ],
        ),
      ),
      floatingActionButton: Transform.scale(
        scale: 0.8,
        child: FloatingActionButton(
          onPressed: () {},
          backgroundColor: Theme.of(context).primaryColor,
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}
