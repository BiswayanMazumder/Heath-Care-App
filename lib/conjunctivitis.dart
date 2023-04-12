import 'package:flutter/material.dart';
import 'package:umail/apppage.dart';
import 'package:umail/conjunctreatment.dart';


import 'package:umail/main.dart';


class conunctivitis extends StatefulWidget {
  const conunctivitis({Key? key}) : super(key: key);

  @override
  State<conunctivitis> createState() => _conunctivitisState();
}

class _conunctivitisState extends State<conunctivitis> {
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
        title: new Text('Conjunctivitis',style: new TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w200,
          letterSpacing: 2,
        ),),


      ),
      body: new Column(
        children: [
          Padding(padding: EdgeInsets.all(8)),
          new Text('   Conjunctivitis',style:new TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 25,
          ),),
          new Text('Conjunctivitis, an inflammation of the transparent membrane (conjunctiva) that lines your '
              'eyelids and part of your eyeballs, has several possible causes. It could be a bacterial or viral infection, an '
              'allergic reaction to pollen or animal dander, or a result of chemical irritants (smoke, chlorine, lens solution, etc.).These '
              'symptoms may last a few hours to several weeks: redness, itching, tearing, burning sensation, pus-like discharge and/or'
              ' crusting of the eyelids. Because conjunctivitis causes inflammation of the small blood vessels in the conjunctiva to become'
              ' more prominent, the whites of your eyes will appear pink or red. When you wake you are likely to feel that your eyelids are'
              ' pasted shut, and your vision may not be as clear as usual.',
            style: new TextStyle(
                fontSize: 19,
                fontWeight: FontWeight.w300,
                color: Colors.black
            ),),
          Align(
            alignment: Alignment.centerLeft,
            child: new TextButton(onPressed:(){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Conjunctreatment()));
            },
                child:new Text('Treatment',
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