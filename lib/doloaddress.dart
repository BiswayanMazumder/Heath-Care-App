

import 'package:flutter/material.dart';
import 'package:umail/antacidconfirm.dart';
import 'package:umail/apppage.dart';
class doloaddresses extends StatefulWidget {
  const doloaddresses({Key? key}) : super(key: key);

  @override
  State<doloaddresses> createState() => _doloaddressesState();
}

class _doloaddressesState extends State<doloaddresses> {
  TextEditingController address=TextEditingController();
  TextEditingController Landmark=TextEditingController();
  TextEditingController pin=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
     resizeToAvoidBottomInset: false,
      appBar: new AppBar(
        backgroundColor: Colors.black,
        shadowColor: Colors.blue,
        bottomOpacity: 80,
        actions: [
          IconButton(onPressed:(){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Apppage()));
          }, icon: Icon(Icons.arrow_back_ios_rounded))
        ],
        elevation: 80,
        title: new Text('Address Details',style:
        new TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w300
        ),),
      ),
      body: new Column(
        children: [
          Padding(padding: const EdgeInsets.all(5)),
          Align(
            alignment: Alignment.center,
            child: new Text('Enter your address details',style:
            new TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 22,
              wordSpacing: 2,
            ),),
          ),
          SizedBox(
            height: 50,
          ),
          new Text('Address Line-1',style: new TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w300,
          ),),
          Padding(padding: const EdgeInsets.all(5)),

          Align(
              alignment: Alignment.center,
              child: new TextField(
                controller: address,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  hintText: 'Enter Address Line-1',
                  border:OutlineInputBorder(borderRadius: BorderRadius.circular(25)),
                ),
              )
          ),

          SizedBox(
            height: 50,
          ),
          new Text('Landmark',style: new TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w300,
          ),),
          Padding(padding: const EdgeInsets.all(5)),
          Align(
              alignment: Alignment.center,
              child: new TextField(
                controller: Landmark,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  hintText: 'Enter Landmark',
                  border:OutlineInputBorder(borderRadius: BorderRadius.circular(25)),
                ),
              )
          ),
          SizedBox(
            height: 10,
          ),
          new Text('Pin Code',style: new TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w300,
          ),),
          Padding(padding: const EdgeInsets.all(5)),
          Align(
              alignment: Alignment.center,
              child: new TextField(
                controller: pin,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  hintText: 'Enter Pincode',
                  border:OutlineInputBorder(borderRadius: BorderRadius.circular(25)),
                ),
              )
          ),
          SizedBox(
            height: 10,
          ),
          new ElevatedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Antaccidconfirm()));
          }, child:new Text('Confirm',style: new TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black,
              fontSize: 20
          ),))



        ],
      ),
    );
  }
}
