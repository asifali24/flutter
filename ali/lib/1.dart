import "package:flutter/material.dart";

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Gmail StateFul",
    home: GmailStal(),
  ));
}

class GmailStal extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _States();
  }
}

class _States extends State {

  int _counter = 0;

  void _increment() {
    setState(() {
      // This call to setState tells the Flutter framework that
      // something has changed in this State, which causes it to rerun
      // the build method below so that the display can reflect the
      // updated values. If you change _counter without calling
      // setState(), then the build method won't be called again,
      // and so nothing would appear to happen.
      _counter++;
    });
  }


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
              icon: Icon(Icons.menu), tooltip: "Seaarch", onPressed: () {}),
          title: Text("Gmail StateFull"),
          actions: <Widget>[
            IconButton(
                icon: Icon(Icons.search), tooltip: "Search", onPressed: () {})
          ],
        ),
        body:Center( child: Row(
          children: <Widget>[
            RaisedButton(
              colorBrightness: Brightness.dark,
              onPressed: _increment,
              child: Text('Increment'),
            ),
            Text('Count: $_counter'),
            RaisedButton(
              colorBrightness: Brightness.dark,
              onPressed: _increment,
              child: Text('Increment'),
            ),
            Text('Count: $_counter'),
            RaisedButton(
              colorBrightness: Brightness.dark,
              onPressed: _increment,
              child: Text('Increment'),
            ),
            Text('Count: $_counter'),
          ],
        )
        ) ,

        floatingActionButton: FloatingActionButton(
            onPressed: () {},
            child: IconButton(icon: Icon(Icons.add), onPressed: null)));
  }
}
