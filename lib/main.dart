import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          title: Text('Dicey'),
          backgroundColor: Colors.blue,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatelessWidget {

  var leftDiceNumber = 1;
  var rightDiceNumber= 2;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: FloatingActionButton( 
              onPressed: (){
                print('Left dice rolled');
              },             
              child: Image(              
              width: 200.0,
              image: AssetImage(
                  'images/dice$leftDiceNumber.png'), //make sure the image does not overflow dice 1
            ),
            ),
            flex: 1,
            
          ),
          Expanded(
            child: FloatingActionButton(
              onPressed: (){
                  print('Right dice rolled');//do something
              }, //required property when using a button widget. void callback/anonymous function
              child: Image(
              width: 200.0,
              image: AssetImage(
                  'images/dice$rightDiceNumber.png'), // shortcut for this widgetImage.asset('images/dice2.png'),
            ), 
            ),
            flex: 1,//default is 1
            
          ),
        ],
      ),
    );
  }
}
