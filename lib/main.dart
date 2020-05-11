import 'package:flutter/material.dart';
import 'package:fluttersampleappjunghoon/view/Home_View.dart';
import 'package:fluttersampleappjunghoon/view/Profile_View.dart';
import 'package:fluttersampleappjunghoon/view/Rank_View.dart';
import 'package:fluttersampleappjunghoon/view/Notification_View.dart';
import 'package:fluttersampleappjunghoon/view/Search_View.dart';


void main() => runApp(App());

class App extends StatelessWidget {

  @override
  _TabPageState createState() => _TabPageState();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: _TabPageState(),
    );
  }
}

class _TabPageState extends StatefulWidget {
  @override
  __TabPageStateState createState() => __TabPageStateState();
}

class __TabPageStateState extends State<_TabPageState> {
  int _selectedIndex = 0;

  List _pages;

  @override
  void initState() {
    super.initState();
    _pages = [HomeView(), SearchView(), RankView(), NotificationView(), ProfileView()];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: _pages[_selectedIndex]),
      bottomNavigationBar: BottomNavigationBar(
          fixedColor: Colors.black,
          onTap: _onItemTapped,
          currentIndex: _selectedIndex,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(Icons.home), title: Text('Home')),
            BottomNavigationBarItem(
                icon: Icon(Icons.search), title: Text('Search')),
            BottomNavigationBarItem(
                icon: Icon(Icons.mobile_screen_share), title: Text('Rank')),
            BottomNavigationBarItem(
                icon: Icon(Icons.notifications_none), title: Text('Notification')),
            BottomNavigationBarItem(
                icon: Icon(Icons.account_circle), title: Text('Profile'))
          ]),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}
