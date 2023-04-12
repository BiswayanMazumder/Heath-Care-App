import 'package:flutter/material.dart';
import 'package:umail/a+.dart';
import 'package:umail/apppage.dart';
class womenblood extends StatefulWidget {
  const womenblood({Key? key}) : super(key: key);

  @override
  State<womenblood> createState() => _womenbloodState();
}

class _womenbloodState extends State<womenblood> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        backgroundColor: Colors.black,
        resizeToAvoidBottomInset: false,
        appBar: new AppBar(
          title: new Text('Blood Donation For Women'),
          backgroundColor: Colors.black,
          actions: [
            new IconButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Apppage()));
            }, icon: Icon(Icons.home_filled))
          ],
        ),
        body:new Column(
          children: [
            new TextButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Apositive()));
            },
              child:

              new Text('⊛ A+',style: new TextStyle(
                  color: Colors.white,
                  fontSize:50),
              ),),
            new TextButton(onPressed: (){},
              child:

              new Text('⊛ A-',style: new TextStyle(
                  color: Colors.white,
                  fontSize:50),
              ),),
            new TextButton(onPressed: (){},
              child:

              new Text('⊛ B-',style: new TextStyle(
                  color: Colors.white,
                  fontSize:50),
              ),),
            new TextButton(onPressed: (){},
              child:

              new Text('⊛ B+',style: new TextStyle(
                  color: Colors.white,
                  fontSize:50),
              ),),
            new TextButton(onPressed: (){},
              child:
              new Text(' ⊛ AB+',style: new TextStyle(
                  color: Colors.white,
                  fontSize:50),
              ),),
            new TextButton(onPressed: (){},
              child:
              new Text('⊛ O+',style: new TextStyle(
                  color: Colors.white,
                  fontSize:50),
              ),),
            new TextButton(onPressed: (){},
              child:

              new Text('⊛ O-',style: new TextStyle(
                  color: Colors.white,
                  fontSize:50),
              ),),
            new TextButton(onPressed: (){},
              child:
              new Text('⊛ AB-',style: new TextStyle(
                  color: Colors.white,
                  fontSize:50),
              ),),


          ],
        )



    );
  }
}
