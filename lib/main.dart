import 'package:flutter/material.dart';

void main(){
  runApp(
    MaterialApp(
      title: "Simple Interest Calculator App",
      home: SIForm(), // This will be our stateful widget
    )
  );
}

/*-------------------------Create Stateful Widget that return the State class*/
class SIForm extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _SIFormState();
    throw UnimplementedError();
  }
}

/*--------------------------------Create your state Class with build() method**/

class _SIFormState extends State <SIForm>{
  //define variable/properties that will be used later
  var _currencies = ["Euro", "Dollar", "Pounds", "Others"]; // Variable used in dropdown button
  final _minimunPadding = 5.0;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      //resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text("Simple Interest Calculator"),
      ),
      body: Container(
        margin: EdgeInsets.all(_minimunPadding * 2),
        child: ListView(
          children: <Widget>[
            getImageAsset(),
            Padding(
              padding: EdgeInsets.only(top: _minimunPadding, bottom: _minimunPadding),
              child: TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    labelText: "Principal",
                    hintText: "Enter Principal e.g. 12000",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0)
                    )
                ),
              )
            ),
            Padding(
              padding: EdgeInsets.only(top: _minimunPadding, bottom: _minimunPadding),
              child:TextField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      labelText: "Rate of Interest",
                      hintText: "In percent",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0)
                      )
                  ),
                ),
            ),
            Padding( //row 1
              padding: EdgeInsets.only(top: _minimunPadding, bottom: _minimunPadding),
              child:Row(
                children: <Widget> [
                  Expanded(child:TextField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        labelText: "Term",
                        hintText: "Time in years",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0)
                        )
                    ),
                  ),
                  ),
                  Container(width: _minimunPadding*5,),
                  Expanded(child: DropdownButton<String>(
                    items: _currencies.map((String value){
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                    value: "Euro",
                    onChanged: (String newValueSelected){
                      //
                    },
                  ))
                ],
              ),
            ),
            Padding( //row2
              padding: EdgeInsets.only(top: _minimunPadding, bottom: _minimunPadding),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: RaisedButton(
                      child: Text("Calculate"),
                      onPressed: (){

                      },
                    ),
                  ),
                  Expanded(
                    child: RaisedButton(
                      child: Text("Reset"),
                      onPressed: (){

                      },
                    ),
                  ),
                ],
              ),
            ),
            Padding(
                padding: EdgeInsets.only(top: _minimunPadding, bottom: _minimunPadding),
                child: Text("Todo test")
            ),

          ],
        ),
      ),
    );
    throw UnimplementedError();
  }
  Widget getImageAsset(){
    AssetImage assetImage =  AssetImage("images/coins.PNG");
    Image image = Image(image: assetImage, width: 125.0, height: 125.0,);
    return Container(child: image, margin: EdgeInsets.all(_minimunPadding * 10),);
  }
  
}