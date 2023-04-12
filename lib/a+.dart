

import 'package:flutter/material.dart';
import 'package:umail/apppage.dart';
import 'package:umail/main.dart';
import 'package:umail/womenblood.dart';
class Apositive extends StatefulWidget {
  const Apositive({Key? key}) : super(key: key);

  @override
  State<Apositive> createState() => _ApositiveState();
}

class _ApositiveState extends State<Apositive> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.black45,
      appBar: new AppBar(
        backgroundColor: Colors.grey,
        title: new Text('Characteristics of A+'),
        actions: [
          IconButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Apppage()));
          }, icon: Icon(Icons.home)),
          IconButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
          }, icon: Icon(Icons.logout))
        ],
      ),

      body: new Text('\nWhile there is no scientific proof that blood types are associated with certain personality traits, \nit’s '
          'a persistent theory in Japanese culture known as “ketsuekigata.”'
          'According to those who believe this theory, these are the personality traits associated with the A+ blood type:\n'
          '\n •tense'
        '\n •stubborn'
        '\n •nearnest'
        '\n •responsible'
        '\n •patient'
        '\n •reserved'
        '\n •sensible'
        '\n •creative',style: new TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold),
      ),

    );

  }
}
