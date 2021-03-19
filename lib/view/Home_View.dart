import 'package:flutter/material.dart';
import 'package:fluttersampleappjunghoon/viewtype/ListViewType01.dart';
import 'package:fluttersampleappjunghoon/viewtype/ListViewType02.dart';

class HomeView extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return BodyLayout();
  }
}

var _container = Container(
  height: 150,
  color: Colors.brown,
  margin: EdgeInsets.symmetric(vertical: 10),
);

var _container2 = Container(
  height: 200,
  color: Colors.cyan,
  margin: EdgeInsets.symmetric(vertical: 10),
);

class BodyLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _myListView(context);
  }
}

Widget _myListView(BuildContext context) {
  return Scaffold(
    body: Padding(
      padding: const EdgeInsets.all(40.0),
      child: ListView(
        children: <Widget>[
          _container,
          _container2,
          Container (
            height: 300,
            child: ListViewType01(),
          ),
          _container2,
          ListViewType02(),
          _container
        ],
      ),
    ),
  );
}