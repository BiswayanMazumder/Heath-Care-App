import 'package:flutter/material.dart';
import 'package:umail/apppage.dart';
import 'package:umail/dolocard.dart';
class Dolo extends StatefulWidget {
  const Dolo({Key? key}) : super(key: key);

  @override
  State<Dolo> createState() => _DoloState();
}

class _DoloState extends State<Dolo> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.greenAccent,
      appBar: new AppBar(
        shadowColor: Colors.deepPurple,
        elevation: 50,
        actions: [
          IconButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Apppage()));
          }, icon: Icon(Icons.logout))
        ],
        backgroundColor: Colors.black,
        title: new Text('Dolo 650',style: new TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.w300
        ),),
      ),
      body: new Column(
        children: [
          Padding(padding: EdgeInsets.all(15)),
          new Text('  Dolo 650 tablet',style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold
          ),),
          Padding(padding: const EdgeInsets.all(18)),
          new Text(' Manufacturer:\n\n Micro Labs Ltd\n\n Salt Composition\n\n'
              ' Paracetamol (650mg)\n\n'
              ' Storage:\n\n Store below 30°C',style: new TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w300,
              decoration: TextDecoration.none,
              color: Colors.red
          ),),
          Padding(padding: const EdgeInsets.all(20)),
          Align(
            alignment: Alignment.center,
            child:new ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>dolocards()));
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