import 'package:flutter/material.dart';

class ListViewType01 extends StatefulWidget {
  @override
  _ListViewType01State createState() => _ListViewType01State();
}

class _ListViewType01State extends State<ListViewType01> {
  @override
  Widget build(BuildContext context) {
    return Text('Test View Type 01',style: TextStyle(fontSize: 25, color: Colors.amber), textAlign: TextAlign.center,);
  }
}
