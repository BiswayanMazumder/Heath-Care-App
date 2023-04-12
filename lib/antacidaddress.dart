

import 'package:flutter/material.dart';
import 'package:umail/antacidconfirm.dart';
import 'package:umail/apppage.dart';
class Antacidaddress extends StatefulWidget {
  const Antacidaddress({Key? key}) : super(key: key);

  @override
  State<Antacidaddress> createState() => _AntacidaddressState();
}

class _AntacidaddressState extends State<Antacidaddress> {
  TextEditingController addressController=TextEditingController();
  TextEditingController LandmarkController=TextEditingController();
  TextEditingController pinController=TextEditingController();
  TextEditingController quantityController=TextEditingController();
  String result="";
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
              controller: addressController,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                hintText: 'Enter Address Line-1',
                border:OutlineInputBorder(borderRadius: BorderRadius.circular(25)),
            ),
          )
          ),

          // SizedBox(
          //   height: 50,
          // ),
          // new Text('Landmark',style: new TextStyle(
          //   fontSize: 20,
          //   fontWeight: FontWeight.w300,
          // ),),
          // Padding(padding: const EdgeInsets.all(5)),
          // Align(
          //     alignment: Alignment.center,
          //     child: new TextField(
          //       controller: Landmark,
          //       keyboardType: TextInputType.text,
          //       decoration: InputDecoration(
          //         hintText: 'Enter Landmark',
          //         border:OutlineInputBorder(borderRadius: BorderRadius.circular(25)),
          //       ),
          //     )
          // ),
          SizedBox(
            height: 50,
          ),
          new Text('Pin Code',style: new TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w300,
          ),),
          Padding(padding: const EdgeInsets.all(5)),
          Align(
              alignment: Alignment.center,
              child: new TextField(
                controller: pinController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  hintText: 'Enter Pincode',
                  border:OutlineInputBorder(borderRadius: BorderRadius.circular(25)),
                ),
              )
          ), SizedBox(
            height: 50,
          ),
          new Text('Quantity',style: new TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w300,
          ),),
          Align(
              alignment: Alignment.center,
              child: new TextField(
                controller: quantityController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  hintText: 'Enter Quantity',
                  border:OutlineInputBorder(borderRadius: BorderRadius.circular(25)),
                ),
              )
          ),

          new ElevatedButton(onPressed: (){
            double quantity=double.parse(quantityController.value.text);
            Price(quantity);
          },

              child:
              new Text('Click To Get Price',style: new TextStyle(fontWeight: FontWeight.bold,
          fontSize: 15,color: Colors.black),)),
          Padding(padding: EdgeInsets.all(20)),
          new Text('The Amount to be Paid:\n\n                   $result',style: new TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20
          ),),
          SizedBox(
            height: 80,
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
  void Price(double quantity)
  {
    double finalresult=(2*quantity);
    String meds=finalresult.toStringAsFixed(2);
    setState(() {
      result=meds;
    });
  }
}
