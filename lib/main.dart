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
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex:1,
          child: Image(
            width: 200.0,
            image: AssetImage(
                'images/dice1.png'), //make sure the image does not overflow dice 1
          ),
        ),
        Expanded(
          flex: 1,
          child: Image(
            width: 200.0,
            image: AssetImage(
                'images/dice1.png'), //dice 2
          ),
        ),
      ],
    );
  }
}
