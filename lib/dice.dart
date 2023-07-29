import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Dice extends StatefulWidget {
  const Dice({Key? key}) : super(key: key);

  @override
  State<Dice> createState() => _DiceState();
}

class _DiceState extends State<Dice> {

  var value1 = 1;
  var value2 = 2;

  void rollDice() {
    value1 = Random().nextInt(6) + 1;
    value1;
    value2 = Random().nextInt(6) + 1;
    value2;
  }


  @override
  Widget build(BuildContext context) {
    return Center(
      child: Scaffold(
        appBar: AppBar(
          title: Text('TossUpp',
          style: TextStyle(fontSize: 25),),
          centerTitle: true,
          backgroundColor: Colors.blueGrey,
        ),
        backgroundColor: Colors.white,
        body: GestureDetector(
          child: Padding(
            padding: const EdgeInsets.only(top: 250.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image(image: AssetImage('images/dice$value1.png'),
                height: 150, width: 150,),

                SizedBox(width: 60,),
                Image(image: AssetImage('images/dice$value2.png'),
                  height: 150, width: 150,),
              ],
            ),
          ),

          onTap: (){
            setState(() {
              rollDice();
            });
          },
        ),
      ),
    );
  }
}
