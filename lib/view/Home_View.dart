import 'package:flutter/material.dart';
import 'package:fluttersampleappjunghoon/viewtype/ListViewType01.dart';

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

class BodyLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _myListView(context);
  }
}

Widget _myListView(BuildContext context) {
  return ListViewType01();
}