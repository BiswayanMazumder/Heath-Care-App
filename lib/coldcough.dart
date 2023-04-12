import 'package:flutter/material.dart';
import 'package:umail/antacidcard.dart';
import 'package:umail/coldaidbuy.dart';
import 'package:umail/main.dart';
class Coldcough extends StatefulWidget {
  const Coldcough({Key? key}) : super(key: key);

  @override
  State<Coldcough> createState() => _ColdcoughState();
}

class _ColdcoughState extends State<Coldcough> {
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
        title: new Text('Coldaid',style: new TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.w300
        ),),
      ),
      body: new Column(
        children: [
          Padding(padding: EdgeInsets.all(15)),
          new Text('  Coldaid Tablet',style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold
          ),),
          Padding(padding: const EdgeInsets.all(18)),
          new Text(' Manufacturer:\n\n Adonis Laboratories Pvt Ltd\n\n Salt Composition\n\n'
              ' Caffeine (30mg) + Chlorpheniramine Maleate (2mg) + Paracetamol (500mg) + Phenylephrine (5mg)\n\n'
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
              Navigator.push(context, MaterialPageRoute(builder: (context)=>coldaidbuy()));
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
