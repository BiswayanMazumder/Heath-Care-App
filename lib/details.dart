import 'package:flutter/material.dart';
import 'package:umail/disclaimer.dart';
import 'package:umail/main.dart';
class Details extends StatefulWidget {
  const Details({Key? key}) : super(key: key);

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.black,
        centerTitle:false,
        shadowColor: Colors.red,
        bottomOpacity: 25,
        surfaceTintColor: Colors.white,
        elevation: 50,
        title: new Text('Page For Details',
        style: TextStyle(
          color: Colors.white,
          fontSize: 20,
          fontWeight: FontWeight.bold,

        ),),
      ),
      body:
      Column(
        children: [
          Padding(padding: EdgeInsets.all(20)),
          Align(
            alignment: Alignment.center,
            heightFactor: 25,
          ),
          new Text('\n\n\nCreated By-Biswayan Mazumder\n\n'
              'App Details-This App is Used To get  details about various medicines'
              ' needed  when you are ill',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
          TextButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
          }, child:Text('\n\nHomePage')),
          new TextButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Disclaimer()));
          }, child: new Text('Disclaimer'))
        ],
      ),

    );
  }
}
