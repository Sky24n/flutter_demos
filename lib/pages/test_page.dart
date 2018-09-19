import 'package:flutter/material.dart';

class TestPage extends StatefulWidget {
  final String title;

  TestPage(this.title);

  @override
  State<StatefulWidget> createState() {
    return new _TestPageState();
  }
}

class _TestPageState extends State<TestPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text(widget.title),
        centerTitle: true,
      ),
      body: new Column(
        children: <Widget>[],
      ),
    );
  }
}
