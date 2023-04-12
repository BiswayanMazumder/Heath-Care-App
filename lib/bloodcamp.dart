import 'package:flutter/material.dart';
import 'package:umail/apppage.dart';
import 'package:umail/manblood.dart';
import 'package:umail/womenblood.dart';
class Bloodcamp extends StatefulWidget {
  const Bloodcamp({Key? key}) : super(key: key);

  @override
  State<Bloodcamp> createState() => _BloodcampState();
}

class _BloodcampState extends State<Bloodcamp> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
      appBar: new AppBar(
        backgroundColor: Colors.black,
        title: new Text('Select Your gender',
        style: new TextStyle(fontSize: 20,
        fontWeight: FontWeight.bold,
        height: 2,
        wordSpacing: 1),),
      ),
      body:
      new Row(
        children: [

          SizedBox(
            height: 10,
          ),
            Padding(padding: EdgeInsets.all(0)),

          Align(
            alignment: Alignment.center,

            child:new ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>ManBlood()));
            },
              child:Icon(Icons.man,size: 112,color: Colors.black,),
              style:ButtonStyle(elevation: MaterialStatePropertyAll(90),
              backgroundColor: MaterialStatePropertyAll(Colors.greenAccent),
              iconSize: MaterialStatePropertyAll(150),
              )
            ),
            
          ),
          SizedBox(
            height:50,
          ),
          Padding(padding: EdgeInsets.all(50)),
          Align(
            alignment: Alignment.center,
            child: new ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>womenblood()));
            },
                child:Icon(Icons.woman,size: 110,color: Colors.black,),
              style: ButtonStyle(iconSize: MaterialStatePropertyAll(150),
              elevation: MaterialStatePropertyAll(90),
              backgroundColor: MaterialStatePropertyAll(Colors.redAccent)),
            ),
          )
        ],
      ),
    );
  }
}
