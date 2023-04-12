import 'package:flutter/material.dart';
import 'package:umail/apppage.dart';
class ManBlood extends StatefulWidget {
  const ManBlood({Key? key}) : super(key: key);

  @override
  State<ManBlood> createState() => _ManBloodState();
}

class _ManBloodState extends State<ManBlood> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.black,
      resizeToAvoidBottomInset: false,
      appBar: new AppBar(
        title: new Text('Blood Donation For Men'),
        backgroundColor: Colors.black,
        actions: [
          new IconButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Apppage()));
          }, icon: Icon(Icons.home_filled))
        ],
      ),
      body:new Column(
        children: [
          new TextButton(onPressed: (){},
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
