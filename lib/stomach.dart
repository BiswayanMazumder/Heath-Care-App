import 'package:flutter/material.dart';
import 'package:umail/antacid.dart';
import 'package:umail/apppage.dart';
import 'package:umail/famotine.dart';
import 'package:umail/main.dart';
class StomachUpset extends StatefulWidget {
  const StomachUpset({Key? key}) : super(key: key);

  @override
  State<StomachUpset> createState() => _StomachUpsetState();
}

class _StomachUpsetState extends State<StomachUpset> {
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
        title: new Text('Stomach Upset',style: new TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w200,
          letterSpacing: 2,
        ),),
        

      ),
     body: new Column(
       children: [
         Padding(padding: EdgeInsets.all(8)),
         new Text('   Intestinal Gas',style:new TextStyle(
           fontWeight: FontWeight.bold,
           fontSize: 25,
         ),),
         new Text('It’s natural to have gas in your digestive tract, and to pass gas regularly. In fact, everyone '
             'passes gas at least 12 times a day, which is a combination of oxygen, hydrogen, nitrogen, carbon dioxide, and methane.'
             'The unpleasant odor of flatus is cause by gases (e.g. hydrogen sulfide) produced by the bacteria in the large intestine.'
             ' Even though it’s natural to have gas in your digestive tract, excessive gas can cause intense, temporary pain.Although there are several over-the-counter medications that '
             'advertise gas relief, they do not work for everyone and may have side effects. Medications that have been shown to'
             ' effectively reduce gas use simethicone, a substance that helps gas be expelled through belching or passing flatus'
             ' (it does not make gas dissolve or disappear). '
             ' \n\nMedicines Prescribed:',
         style: new TextStyle(
           fontSize: 19,
           fontWeight: FontWeight.w300,
           color: Colors.black
         ),),
         Align(
           alignment: Alignment.centerLeft,
           child: new TextButton(onPressed:(){
             Navigator.push(context, MaterialPageRoute(builder: (context)=>Antacid()));
           },
               child:new Text('Antacid',
                 style: new TextStyle(
                   fontWeight: FontWeight.bold,
                   fontSize: 19,
                   color: Colors.black
                 ),
               )),
         ),
         Padding(padding: EdgeInsets.all(2)),
         Align(
           alignment: Alignment.centerLeft,
           child: new TextButton(onPressed:(){
             Navigator.push(context, MaterialPageRoute(builder: (context)=>famotine()));
           },
               child:new Text('Famotidine',
                 style: new TextStyle(
                     fontWeight: FontWeight.bold,
                     fontSize: 19,
                     color: Colors.black
                 ),
               )),
         ),
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
