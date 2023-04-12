import 'package:flutter/material.dart';
import 'package:umail/apppage.dart';
import 'package:umail/coldcough.dart';

import 'package:umail/main.dart';

class coldcauses extends StatefulWidget {
  const coldcauses({Key? key}) : super(key: key);

  @override
  State<coldcauses> createState() => _coldcausesState();
}

class _coldcausesState extends State<coldcauses> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: new AppBar(
        actions: [
          IconButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
          }, icon:Icon(Icons.logout_rounded))
        ],
        shadowColor: Colors.black,
        elevation: 50,
        backgroundColor: Colors.black,
        title: new Text('Cold Cough',style: new TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w200,
          letterSpacing: 2,
        ),),


      ),
      body: new Column(
        children: [
          Padding(padding: EdgeInsets.all(8)),
          new Text('   Cold Cough',style:new TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 25,
          ),),
          new Text('Both of these illnesses are upper respiratory infections, meaning they involve your nose, throat, and lungs.'
    'Viruses cause both colds and flu by increasing inflammation of the membranes in the nose and throat.'
   'Most transmission of these viruses occurs via hand-to-hand contact.',
            style: new TextStyle(
                fontSize: 19,
                fontWeight: FontWeight.w300,
                color: Colors.black
            ),),
          Align(
            alignment: Alignment.centerLeft,
            child: new TextButton(onPressed:(){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Coldcough()));
            },
                child:new Text('Coldaid',
                  style: new TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 19,
                      color: Colors.black
                  ),
                )),
          ),
          // Padding(padding: EdgeInsets.all(2)),
          // Align(
          //   alignment: Alignment.centerLeft,
          //   child: new TextButton(onPressed:(){
          //   },
          //       child:new Text('Paracetamol',
          //         style: new TextStyle(
          //             fontWeight: FontWeight.bold,
          //             fontSize: 19,
          //             color: Colors.black
          //         ),
          //       )),
          // ),
          Padding(padding: EdgeInsets.all(20)),
          Align(
            alignment: Alignment.center,
            child: new TextButton(onPressed:(){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Apppage()));
            },
                child:new Text('Redirect To Previous Page',
                  style: new TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      color: Colors.deepPurple,
                      decoration: TextDecoration.underline
                  ),
                )),
          ),


        ],
      ),

    );
  }
}