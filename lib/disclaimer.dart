import 'package:flutter/material.dart';
import 'package:umail/main.dart';
class Disclaimer extends StatefulWidget {
  const Disclaimer({Key? key}) : super(key: key);

  @override
  State<Disclaimer> createState() => _DisclaimerState();
}

class _DisclaimerState extends State<Disclaimer> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.white,
      appBar: new AppBar(
        backgroundColor: Colors.black,
        shadowColor: Colors.black,
        elevation: 50,
        title: new Text('Disclaimer',style: TextStyle(color: Colors.white,
        fontWeight: FontWeight.bold,
        fontSize: 20,
        ),
        ),
      ),
      body: new Column(
        children: [
          Padding(padding: EdgeInsets.all(25)),
          new Text('Disclaimer:\n',style: new TextStyle(
            fontWeight: FontWeight.bold,fontSize: 25,
            color: Colors.red
          ),),
          new Text('The information contained on the Service is for general information purposes only.The Company assumes'
              ' no responsibility for errors or omissions in the contents of the Service.'
              'In no event shall the Company be liable for any special, direct, indirect, consequential, or incidental '
              'damages or any damages whatsoever, whether in an action of contract,'
              'negligence or other tort, arising out of or in connection with the use of the Service or the contents of the '
              'Service. The Company reserves the right to make additions, deletions, or modifications to the contents on the '
              'Service at any time without prior notice. This Disclaimer has been created with the help of the TermsFeed '
              'Disclaimer Generator ',style: new TextStyle(fontSize: 20,fontWeight: FontWeight.w300,
          color: Colors.black),),
          new TextButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
          }, child: new Text('Navigate To HomePage'))
        ],
        
        
      ),
      
    );
  }
}
