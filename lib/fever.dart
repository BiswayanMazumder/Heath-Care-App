import 'package:flutter/material.dart';
import 'package:umail/apppage.dart';
import 'package:umail/dolo.dart';
import 'package:umail/main.dart';

class fever extends StatefulWidget {
  const fever({Key? key}) : super(key: key);

  @override
  State<fever> createState() => _feverState();
}

class _feverState extends State<fever> {
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
        title: new Text('Fever',style: new TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w200,
          letterSpacing: 2,
        ),),


      ),
      body: new Column(
        children: [
          Padding(padding: EdgeInsets.all(8)),
          new Text('   Fever',style:new TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 25,
          ),),
          new Text('A fever is a higher-than-normal body temperature, one of the body’s natural responses to infection.'
            'A low-grade fever is not usually a cause for concern, but a temperature 102°F and above should be treated.'
              'For adults, a fever is when your temperature is higher than 100.4°F'
    'For kids, a fever is when their temperature is higher than 100.4°F (measured rectally); 99.5°F (measured orally); or '
              '99°F (measured under the arm).',
            style: new TextStyle(
                fontSize: 19,
                fontWeight: FontWeight.w300,
                color: Colors.black
            ),),
          Align(
            alignment: Alignment.centerLeft,
            child: new TextButton(onPressed:(){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Dolo()));
            },
                child:new Text('Dolo 650',
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