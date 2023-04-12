import 'package:flutter/material.dart';
import 'package:umail/main.dart';
class Antaccidconfirm extends StatefulWidget {
  const Antaccidconfirm({Key? key}) : super(key: key);

  @override
  State<Antaccidconfirm> createState() => _AntaccidconfirmState();
}

class _AntaccidconfirmState extends State<Antaccidconfirm> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.black,
      body: new Column(
        children: [
          new Text('\n\nThank You For Your Order.\n\nYour Order Has Been Confirmed',style:
            new TextStyle(
              fontSize: 50,
              fontWeight: FontWeight.bold,
              color: Colors.white,

            ),),
          Padding(padding: const EdgeInsets.all(50)),
          Align(
            alignment: Alignment.center,
            child: new IconButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
            },
                icon: Icon(Icons.home_filled,size: 80,color: Colors.white,)),
          )
        ],
      ),
    );
  }
}
