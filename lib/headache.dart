import 'package:flutter/material.dart';
import 'package:umail/apppage.dart';


import 'package:umail/main.dart';
import 'package:umail/saridon.dart';

class Headache extends StatefulWidget {
  const Headache({Key? key}) : super(key: key);

  @override
  State<Headache> createState() => _HeadacheState();
}

class _HeadacheState extends State<Headache> {
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
          new Text('Everyone suffers the occasional mild headache, but if you experience debilitating pain and/or abnormally frequent '
              'headaches,'
    'you probably want to find relief. There are countless causes of headaches, which differ for each person, so you’ll have to do '
              'some experimenting to figure out the cause of your pain. Fortunately, the vast majority of headaches are primary headaches, '
              'not the result of underlying medical conditions. The three most common types are cluster, tension-type, and migraine.'
    'A cluster headache affects a specific point of the head, often the eye, and is characterized by sharp, piercing pain. Migraine and '
              'tension-type headaches are far more common. “Tension“ headaches are now called “tension-type“ headaches because pain is not '
              'only caused by stress, but also poor posture, depression, and even sexual activity. In fact, recent studies have shown a '
              'connection between low serotonin levels and so-called “tension“ headaches.',
            style: new TextStyle(
                fontSize: 19,
                fontWeight: FontWeight.w300,
                color: Colors.black
            ),),
          Align(
            alignment: Alignment.centerLeft,
            child: new TextButton(onPressed:(){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Saridon()));
            },
                child:new Text('Saridon',
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