import "package:flutter/material.dart";

void main() {
  runApp(MaterialApp(
    title: "Guester App",
    home: GuesterAp();,
  ));
}

class GuesterAp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GestureDetector(
      onTap: () {
        print("onTap click");
      },
      child: Container(
        height: 258.0,
        width: 150.0,
        //alignment: const EdgeInsets.all(8),
        padding: const EdgeInsets.all(8.0),
        margin: const EdgeInsets.all(5.0),
        decoration: BoxDecoration(color: Colors.cyanAccent,
            borderRadius: BorderRadius.all(5.0)
        ),
        child: Center(
            child: Text(
                "Hello World Gesture App"
            )
        ),
      ),
    );
  }
}