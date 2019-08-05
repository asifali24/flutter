import "package:flutter/material.dart";

void main() {
  runApp(MaterialApp(
    debugShowMaterialGrid: false,
    title: "my App",
    home: MyScaffold(),
  ));
}

class MyAppBar extends StatelessWidget {
  MyAppBar({this.title});

  final Widget title;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56.0,
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      decoration: BoxDecoration(color: Colors.yellow),
      child: Row(
        children: <Widget>[
          IconButton(
            icon: Icon(Icons.menu),
            tooltip: "Navigation Menue",
            onPressed: null,
          ),
          Expanded(
            child: title,
          ),
          IconButton(
            icon: Icon(Icons.search),
            tooltip: "Search",
            onPressed: null,
          ),
        ],
      ),
    );
  }
}

class MyScaffold extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Material(
        child: Column(
      children: <Widget>[
        MyAppBar(
            title: Text(
                "Example Title",
              style: Theme.of(context).primaryTextTheme.title,
            ),
      )],
    ));
  }
}
