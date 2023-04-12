import 'package:flutter/material.dart';

import 'package:umail/main.dart';
import 'package:umail/saridonbuy.dart';
class Saridon extends StatefulWidget {
  const Saridon({Key? key}) : super(key: key);

  @override
  State<Saridon> createState() => _SaridonState();
}

class _SaridonState extends State<Saridon> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.greenAccent,
      appBar: new AppBar(
        shadowColor: Colors.deepPurple,
        elevation: 50,
        actions: [
          IconButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
          }, icon: Icon(Icons.logout))
        ],
        backgroundColor: Colors.black,
        title: new Text('Saridon',style: new TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.w300
        ),),
      ),
      body: new Column(
        children: [
          Padding(padding: EdgeInsets.all(15)),
          new Text('  Saridon Tablet',style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold
          ),),
          Padding(padding: const EdgeInsets.all(18)),
          new Text(' Manufacturer:\n\n Adonis Laboratories Pvt Ltd\n\n Salt Composition\n\n'
              ' Paracetamol I.P.: 250 mg Propyphenazone I.P.: 150 mg Caffeine I.P. (anhydrous): 50 mg\n\n'
              ' Storage:\n\n Below 30°C',style: new TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w300,
              decoration: TextDecoration.none,
              color: Colors.red
          ),),
          Padding(padding: const EdgeInsets.all(20)),
          Align(
            alignment: Alignment.center,
            child:new ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Saridonbuy()));
            },
                child:new Text('Click To Buy',style: new TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Colors.black
                ),)),
          )


        ],
      ),
    );
  }
}
