import 'package:flutter/material.dart';
import 'package:umail/main.dart';
class Forgot extends StatefulWidget {
  const Forgot({Key? key}) : super(key: key);
  @override
  State<Forgot> createState() => _ForgotState();
}

class _ForgotState extends State<Forgot> {
  bool hide=true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.green,

      body: Stack(
        children: [
          Padding(padding: EdgeInsets.all(30),
              child: Text('Reset Your Password Credentials',
                style:TextStyle(
                  fontSize: 33,
                  decorationColor: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              )
          ),

          Container(
            width: double.infinity,
            margin: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.45),
            height: 470,
            decoration: BoxDecoration(
                color: Colors.orangeAccent,
                borderRadius:BorderRadius.only(topRight: Radius.circular(50),topLeft: Radius.circular(50))
            ),
            child: new Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("Reset Password",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,
                  fontSize: 25,inherit: true,
                ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(padding:EdgeInsets.all(5)),
                Text('Enter Your Old Password',
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
                      hintText: 'Enter Your Old Password',
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
                SizedBox(
                  height:10 ,
                ),
                Padding(padding: EdgeInsets.all(10)
                ),
                new Text('Enter New Password',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                  ),),
                Padding(padding: EdgeInsets.all(10)),
                new TextField(
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

                ElevatedButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
                },
                  style: ButtonStyle(
                      alignment: Alignment.centerRight,
                      enableFeedback: true,
                      backgroundColor: MaterialStatePropertyAll(Colors.cyanAccent),
                      animationDuration: Duration(minutes: 2),
                      mouseCursor: MaterialStateMouseCursor.clickable),
                  child:Text(('Change Password'),style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,inherit: true,
                    wordSpacing: 2,
                    letterSpacing: 0.3,
                  ),
                  ),
                ),

              ],
            ),

          )
        ],
      ),
    );

  }
}