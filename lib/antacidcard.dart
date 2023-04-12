import 'package:flutter/material.dart';
import 'package:umail/antacidaddress.dart';
import 'package:umail/apppage.dart';
class Antacidbuy extends StatefulWidget {
  const Antacidbuy({Key? key}) : super(key: key);

  @override
  State<Antacidbuy> createState() => _AntacidbuyState();
}

class _AntacidbuyState extends State<Antacidbuy> {
  TextEditingController card=TextEditingController();
  TextEditingController cvv=TextEditingController();
  TextEditingController names=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: new AppBar(
        backgroundColor: Colors.black,
        shadowColor: Colors.red,
        actions: [
          IconButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Apppage()));
          }, icon: Icon(Icons.keyboard_backspace_sharp))
        ],
        elevation: 50,
        title: new Text('Payment And Details Page',style:
          new TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w200
          ),),
      ),
      body: new Column(
        children: [
          Padding(padding: const EdgeInsets.all(8)),
          new Text('Welcome To Buy Antacids',style:
            new TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              decoration: TextDecoration.underline
            ),),
          SizedBox(
            height: 50,
          ),
          new Text('Enter your Card details',style: new TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 15,
            color: Colors.red
          ),),
          Padding(padding: const EdgeInsets.all(5)),
          new TextField(
            keyboardType: TextInputType.number,
            controller: card,
            decoration: InputDecoration(
              hintText: 'XXXX-XXXX-XXXX-XXXX',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(80)
              )
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Padding(padding: const EdgeInsets.all(5)),
          new Text('Enter Your CVV',style: new TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 15,
              color: Colors.red
          ),),
          Padding(padding: const EdgeInsets.all(5)),

          Align(
            alignment: Alignment.center,
            child: new TextField(
              controller: cvv,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                hintText:'XXX',
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(80))
                
              ),
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Padding(padding: const EdgeInsets.all(5)),
          new Text('Enter the name on The Card',style: new TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 15,
              color: Colors.red
          ),),
          Padding(padding: const EdgeInsets.all(5)),
          Align(
            alignment: Alignment.center,
            child: new TextField(
              keyboardType: TextInputType.text,
              controller: names,
              decoration: InputDecoration(
                hintText: 'Enter your name',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(80)
                )
              ),
            )
          ),
          Align(
            alignment: Alignment.center,
            child: new TextButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Apppage()));
            }, child: new Text('Redirect to App Page')),
          ),
          Padding(padding: const EdgeInsets.all(5)),
          Align(
            alignment: Alignment.center,
            child: new ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Antacidaddress()));

            },
                child: new Text('Proceed To next Step',style: new TextStyle(
                  fontSize: 15,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  letterSpacing:1,
                ),)),
          )



        ],

      ),
    );
  }
}
