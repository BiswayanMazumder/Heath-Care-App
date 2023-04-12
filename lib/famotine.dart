import 'package:flutter/material.dart';
import 'package:umail/antacidcard.dart';
import 'package:umail/apppage.dart';
import 'package:umail/main.dart';
class famotine extends StatefulWidget {
  const famotine({Key? key}) : super(key: key);

  @override
  State<famotine> createState() => _famotineState();
}

class _famotineState extends State<famotine> {
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
        title: new Text('Famotine',style: new TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.w300
        ),),
      ),
      body: new Column(
        children: [
          Padding(padding: EdgeInsets.all(15)),
          new Text('  Famotine Tablet',style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold
          ),),
          Padding(padding: const EdgeInsets.all(18)),
          new Text(' Manufacturer:\n\n Bevit Pharmaceuticals Ltd\n\n Salt Composition\n\n'
              ' Aluminium Hydroxide (250mg) + \n Magnesium (250mg) + \n Simethicone (50mg)\n\n'
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
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Antacidbuy()));
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
