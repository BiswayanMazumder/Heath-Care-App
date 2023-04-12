import 'package:flutter/material.dart';
import 'package:umail/bmicalculator.dart';
import 'package:umail/coldcauses.dart';

import 'package:umail/conjunctivitis.dart';
import 'package:umail/fever.dart';
import 'package:umail/headache.dart';
import 'package:umail/main.dart';
import 'package:umail/stomach.dart';
class Apppage extends StatefulWidget {
  const Apppage({Key? key}) : super(key: key);

  @override
  State<Apppage> createState() => _ApppageState();
}

class _ApppageState extends State<Apppage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.white,
     appBar: new AppBar(elevation: 50,
       surfaceTintColor: Colors.deepPurple,
       shadowColor: Colors.deepPurple,
       backgroundColor: Colors.red,
       actions: [
         IconButton(onPressed: (){
           Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
         }, icon: Icon(Icons.logout,size:25,color: Colors.black,weight: 25,))
       ],
       title: new Text('Welcome To UHealthify',style: new TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
     ),
      body: new Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment:CrossAxisAlignment.center,
        children: [
          Padding(padding: EdgeInsets.all(12)),
          Text('Here are some of the common problems faced by any human body\nClick '
              'on each for more details and medicines needed',style: TextStyle(
            fontSize:20,
            fontWeight: FontWeight.w300,
            letterSpacing: 2,
            decorationColor: Colors.green,
            decoration: TextDecoration.underline,
            color: Colors.deepPurple,
          ),
          ),
          Padding(padding: EdgeInsets.all(15)),
          Align(
            alignment: Alignment.centerLeft,
            
          ),
          new TextButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>StomachUpset()));
          },
              child:new Text('Stomach Upset',style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.black,
                letterSpacing: 2
              ),
              ),
          ),
          Padding(padding: EdgeInsets.all(1)),
          new TextButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>fever()));
          },
              child: new Text('Fever',
                style:TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2,
                  color: Colors.black
                ))),
          Padding(padding: EdgeInsets.all(1)),
          new TextButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>coldcauses()));
          },
              child: new Text('Cold And Cough',style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
                letterSpacing: 2,
                color: Colors.black
              ),)),
          // Padding(padding: EdgeInsets.all(1)),
          // new TextButton(onPressed: (){},
          //     child: new Text('Body Ache',style: TextStyle(
          //         fontWeight: FontWeight.bold,
          //         fontSize: 18,
          //         letterSpacing: 2,
          //         color: Colors.black
          //     ),)),
          Padding(padding: EdgeInsets.all(1)),
          new TextButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Headache()));
          },
              child: new Text('Headache',style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  letterSpacing: 2,
                  color: Colors.black
              ),)),
          // Padding(padding: EdgeInsets.all(1)),
          // new TextButton(onPressed: (){},
          //     child: new Text('Diarrhea',style: TextStyle(
          //         fontWeight: FontWeight.bold,
          //         fontSize: 18,
          //         letterSpacing: 2,
          //         color: Colors.black
          //     ),)),
          Padding(padding: EdgeInsets.all(1)),
          new TextButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>conunctivitis()));
          },
              child: new Text('Conjunctivitis',style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  letterSpacing: 2,
                  color: Colors.black
              ),)),
          // Padding(padding: EdgeInsets.all(1)),
          // new TextButton(onPressed: (){},
          //     child: new Text('Allergies',style: TextStyle(
          //         fontWeight: FontWeight.bold,
          //         fontSize: 18,
          //         letterSpacing: 2,
          //         color: Colors.black
          //     ),)),
          // Padding(padding: EdgeInsets.all(1)),
          // new TextButton(onPressed: (){},
          //     child: new Text('Mononucleosis',style: TextStyle(
          //         fontWeight: FontWeight.bold,
          //         fontSize: 18,
          //         letterSpacing: 2,
          //         color: Colors.black
          //     ),)),
          Padding(padding: EdgeInsets.all(1)),
          new TextButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>bmicalc()));
          },
              child: new Text('BMI Calculator',style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  letterSpacing: 2,
                  color: Colors.black
              ),)),
          // new TextButton(onPressed: (){
          //   Navigator.push(context, MaterialPageRoute(builder: (context)=>Bloodcamp()));
          // },
          //     child: new Text('Blood Camps',style:
          //       new TextStyle(
          //         fontWeight: FontWeight.bold,
          //         fontSize: 18,
          //         color: Colors.black
          //       ),)),



        ],
      ),
     );
  }
}
