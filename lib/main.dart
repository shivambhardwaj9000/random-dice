import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: const Center(child: Text('Dicee')),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}



class DicePage extends StatefulWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftdicenumber = 1;
  int rightdicenumber=1;
  void changeface(){
    leftdicenumber= Random().nextInt(6)+1;
    rightdicenumber=Random().nextInt(6)+1;

  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children:  <Widget>[
          
          Expanded(
            
            flex: 1, //flex is used to maintain the ratio in expanded 
            child: TextButton(onPressed: () { 
              setState(() {
                changeface();
                
              });
             },
            child: Image.asset('images/dice$leftdicenumber.png'))
             ),
            
          Expanded(
            flex: 1,
            child: TextButton
            (onPressed: () { 
              setState(() {
                changeface();
              });
             },
            child: Image.asset('images/dice$rightdicenumber.png')),),
          
        ],
      ),
    );
  }
 
}




