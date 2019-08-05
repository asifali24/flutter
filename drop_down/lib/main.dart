import 'package:flutter/material.dart';

void main() {

  runApp(
      MaterialApp(
        title: "Sateful App Example",
        home: FavoriteCity(),
      )
  );
}

class FavoriteCity extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return _FavoriteCityState();
  }
}

class _FavoriteCityState extends State<FavoriteCity> {

  String nameCity = "";
  var _currencies = ['Rupees', 'Dollars', 'Pounds', 'Others'];
  var _currentItemSelected = 'Dollars';

  @override
  Widget build(BuildContext context) {

    debugPrint("Favorite City widget is created");

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(icon: Icon(Icons.menu),tooltip: "Menu button" ,onPressed: (){})
        ,title: Text("Stateful"),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.search), tooltip: "Search hear",onPressed: (){})
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child:
        IconButton(
            icon:
            Icon(
                Icons.add
            ), onPressed: (){}
            ),)
      ,body: Container(
        margin: EdgeInsets.all(20.0),
        child: Column(
          children: <Widget>[
            TextField(
              onSubmitted: (String userInput) {
                setState(() {
                  debugPrint("set State is called, this tells framwork to redraw the FavCity widget");
                  nameCity = userInput;
                });
              },
            ),
            DropdownButton<String>(

              items: _currencies.map((String dropDownStringItem) {
                return DropdownMenuItem<String>(
                  value: dropDownStringItem,
                  child: Text(dropDownStringItem),
                );
              }).toList(),

              onChanged: (String newValueSelected) {
                _onDropDownItemSelected(newValueSelected);
              },

              value: _currentItemSelected,

            ),
            Padding(
                padding: EdgeInsets.all(30.0),
                child: Text(
                  "Your best city is $nameCity",
                  style: TextStyle(fontSize: 20.0),
                ))
          ],
        ),
      ),
    );
  }

  void _onDropDownItemSelected(String newValueSelected) {
    setState(() {
      this._currentItemSelected = newValueSelected;
    });
  }
}