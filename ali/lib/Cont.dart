import "package:flutter/material.dart";
void main(){
  runApp(MaterialApp(
    title: "contener",
    home: Conte(),
  ));
}
class Conte extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(icon: Icon(Icons.menu),tooltip: "For call", onPressed: (){}),
      ),
      body:Center(
        child: Container(
          decoration: BoxDecoration(color: Colors.cyan),
          child: Row(
             mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  IconButton(
                    icon: Icon(Icons.call),onPressed: (){},
                  ),
                  Container(
                    child: Text(
                        "Call",
                      textDirection: TextDirection.ltr,
                    ),
                  )

                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  IconButton(
                    padding: const EdgeInsets.all(2.0),
                    icon: Icon(Icons.navigation),tooltip: "for Navigation",onPressed: (){},
                  ),
                  Container(
                    child: Text("Navigation",
                      textDirection: TextDirection.ltr,
                    ),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  IconButton(
                    padding: const EdgeInsets.all(2.0),
                    icon: Icon(Icons.search),tooltip: "for Search",onPressed: (){},
                  ),
                  Container(
                    child: Text("Search",
                      textDirection: TextDirection.rtl,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ) ,
    );
  }
}