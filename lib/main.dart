import 'package:flutter/material.dart';

void main(){
  runApp(
    MaterialApp(
      title: "Stateful App Example",
      home: FavoriteCity(), // This will be our stateful widget
    )
  );
}

/*---------------------------Creating our stateful Widget-----------------*/

class FavoriteCity extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _FavoriteCityState(); // We use _ here so our class remain private to our own library
    throw UnimplementedError();
  }
}

/*-----------------Creating our State Class with properties that may change*/

class _FavoriteCityState extends State<FavoriteCity> {
  String nameCity = ""; // Define properties that may change in future

  @override
  Widget build(BuildContext context) { //Within Sate class, implement the build() method

    debugPrint("FavoriteCity Widget is created");

    return Scaffold(
      appBar: AppBar(
        title: Text("Stateful App Example"),
      ),
      body: Container(
        margin: EdgeInsets.all(20.0),
        child: Column(
          children: <Widget>[
            TextField(
              onSubmitted: (String userInput) { // also can use onChange
                setState(() { // 5.	Call the setState() to make changes. Tells the framework to redraw widget
                  debugPrint("setState() is called, tells the framework to redraw the FavoriteCity Widget ");
                  nameCity = userInput;
                });
              },
            ),
            Padding(
              padding: EdgeInsets.all(30.0),
                child:Text (
                  "Your city is $nameCity",
                  style: TextStyle(fontSize: 20.0),
                )
            )
          ],
        ),
      ),
    );

    throw UnimplementedError();
  }
  
}