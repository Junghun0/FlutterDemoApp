import 'package:flutter/material.dart';
import 'package:fluttersampleappjunghoon/view/ListViewType01.dart';

class HomeView extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('정훈 listview Sample')),
      body: BodyLayout(),

      );
  }
}

class BodyLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _myListView(context);
  }
}

Widget _myListView(BuildContext context) {
  return  ListView(
    children: <Widget>[
      ListTile(
        title: Text('Sun'),
      ),
      ListTile(
        title: Text('Moon'),
      ),
      ListTile(
        title: Text('Star'),
      ),
      ListViewType01()
    ],
  );
}