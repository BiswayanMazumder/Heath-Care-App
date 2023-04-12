import 'package:flutter/material.dart';
import 'package:umail/apppage.dart';
import 'package:umail/main.dart';
class Conjunctreatment extends StatefulWidget {
  const Conjunctreatment({Key? key}) : super(key: key);

  @override
  State<Conjunctreatment> createState() => _ConjunctreatmentState();
}

class _ConjunctreatmentState extends State<Conjunctreatment> {
  @override
  Widget build(BuildContext context) {
    return  new Scaffold(
      backgroundColor: Colors.black,
      appBar:new AppBar(
        backgroundColor: Colors.black,
        title: new Text('Treatment Of Conjunctivits'),
        actions: [
          IconButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Apppage()));
          }, icon:Icon(Icons.home))
        ],
      ),
      body: new Column(
        children: [
          new Text('Because pink eye is highly contagious, early diagnosis is important. Bacterial cases can be cured with '
              'antibiotic eye drops, viral conjunctivitis clears up on its own, and allergic reactions can be treated with '
              'various types of eye drops. Here are some general tips:',style: new TextStyle(
            fontWeight:FontWeight.w300,
            fontSize: 18,
              color: Colors.white
          ),),
          new Text('\n\nWash your hands frequently to prevent spreading an existing infection to your other eye, and to other people.'
            '\n\nDon’t rub your eyes.'
           '\n\nUse a cool wet washcloth to soak off any crusting.'
            '\n\nUse a warm or cool compress to reduce discomfort.'
            '\n\nDiscard eye make-up because it may cause future infection.'
            '\n\nWash any clothing that may be contaminated, including towels and pillowcases. Try to use clean towels and pillowcases everyday.'
            '\n\nAvoid wearing contact lenses and discard current lenses.'
            '\n\nIf eye drops are prescribed, place drop in pocket formed by pulling down lower lid. Make sure you don’t touch the bottle to the eye in order to prevent contamination.'
            ,style: new TextStyle(
              fontWeight:FontWeight.w300,
              fontSize: 18,
              color: Colors.white
          ),),
          new TextButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
          }, child: new Text('Redirect to Login Page'))
        ],
      ),
    );
  }
}

