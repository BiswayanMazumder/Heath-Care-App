import 'package:flutter/material.dart';
import 'package:umail/main.dart';
class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);
  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  bool hide=true;
  TextEditingController password=TextEditingController();
  TextEditingController confirmpassword=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.black,

      body: Stack(
        children: [
          Padding(padding: EdgeInsets.all(55),
              child: Text('Create Your Account',
                style:TextStyle(
                  color: Colors.white,
                  fontSize: 35,
                  decorationColor: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              )
          ),
          Container(
            width: double.infinity,
            margin: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.45),
            height: 470,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius:BorderRadius.only(topRight: Radius.circular(50),topLeft: Radius.circular(50))
            ),
            child: new Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("Sign Up",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,
                  fontSize: 25,inherit: true,
                ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(padding:EdgeInsets.all(5)),
                Text('Enter Your Email Address:',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      decorationThickness: 50,

                    )),
                Padding(padding: EdgeInsets.all(10)),
                TextField(
                  autocorrect: true,
                  showCursor: true,
                  autofocus: true,
                  enabled: true,
                  keyboardType: TextInputType.emailAddress,
                  decoration:InputDecoration(
                      hintText: 'Enter Your Email Address',
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(25)),
                      hoverColor: Colors.red,
                      focusColor: Colors.red,
                      contentPadding: EdgeInsets.all(20),
                      filled: true,
                      fillColor: Colors.transparent,
                      enabled: true,
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25),
                          borderSide: BorderSide(color: Colors.red,
                              style: BorderStyle.none,
                              width: 25)
                      )
                  ),

                ),

                Padding(padding: EdgeInsets.all(10)
                ),
                new Text('Enter The Password:',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      letterSpacing: 1,
                      wordSpacing: 1
                  ),),
                Padding(padding: EdgeInsets.all(1)),
                new TextField(
                  controller: password,
                  obscureText: hide,
                  keyboardType:TextInputType.visiblePassword,
                  decoration:InputDecoration(
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(25)),
                      enabled: true,
                      enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(25),
                          borderSide: BorderSide(color: Colors.transparent,
                              width: 2)),
                      hintText: 'Enter The Password',
                      suffixIcon: IconButton(onPressed: (){
                        setState(() {
                          hide=!hide;
                        });
                      }, icon: hide?Icon(Icons.visibility_off):Icon(Icons.visibility),)
                  ) ,
                ),
                new Text('Enter The Password Again:',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      letterSpacing: 1,
                      wordSpacing: 1
                  ),),
                Padding(padding: EdgeInsets.all(10)),
                new TextField(
                  controller: confirmpassword,
                  obscureText: hide,
                  keyboardType:TextInputType.visiblePassword,
                  decoration:InputDecoration(
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(25)),
                      enabled: true,
                      enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(25),
                          borderSide: BorderSide(color: Colors.transparent,
                              width: 2)),
                      hintText: 'Enter The Password Again',
                      suffixIcon: IconButton(onPressed: (){
                        setState(() {
                          hide=!hide;
                        });
                      }, icon: hide?Icon(Icons.visibility_off):Icon(Icons.visibility),)
                  ) ,
                ),

                ElevatedButton(onPressed: (){
                  if(password.text!=confirmpassword.text);
                  {
                    showDialog(context: context, builder: (context){
                      return AlertDialog(
                        title: Text('Messages'),
                        content: Text('Passwords Donot Match With Each Other'),
                      );
                    });
                  }

                },
                  style: ButtonStyle(
                      alignment: Alignment.centerRight,
                      enableFeedback: true,
                      backgroundColor: MaterialStatePropertyAll(Colors.cyanAccent),
                      animationDuration: Duration(minutes: 2),
                      mouseCursor: MaterialStateMouseCursor.clickable),
                  child:Text(('Sign Up'),style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,inherit: true,
                    wordSpacing: 2,
                    letterSpacing: 0.3,
                  ),
                  ),
                ),
                Padding(padding: EdgeInsets.all(0)),
                new Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    new Text('Already Have An Account'),
                    new TextButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
                    }, child:new Text('Sign In'))
                  ],
                )

              ],
            ),

          )
        ],
      ),
    );

  }
}
