import "package:flutter/material.dart";
void main(){
  runApp(MaterialApp(
    title: "AppBar",
    home: AppBars(),
  ));
}
class AppBars extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            icon:
              Icon(Icons.menu),
              tooltip: "Menue Bar",
              onPressed: null
        ),
        title: Text("Example Text"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            tooltip: "Search",
            onPressed: null,
          )
        ],
      ),
      body: Center(
        child: Text("hello world"),
      ),
      floatingActionButton: FloatingActionButton(
          tooltip: "Add",
          child: Icon(Icons.add),
          onPressed: null
      ),
    );
  }
}