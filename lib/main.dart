import 'package:flutter/material.dart';
import 'package:umail/apppage.dart';
import 'package:umail/details.dart';
import 'package:umail/forgotpw.dart';
import 'package:umail/signin.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
void main()
{
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'UHealthify',
      home:AnimatedSplashScreen(splash:Image.asset('assets/images/healthcare.png',alignment: Alignment.center,
      filterQuality: FilterQuality.high,
      gaplessPlayback: true),
          animationDuration: Duration(seconds: 5),
          curve: Curves.bounceIn,
          nextScreen: HomePage(),
        splashTransition: SplashTransition.rotationTransition,
        backgroundColor: Colors.white,
        duration: 5,
      ),

    );
  }
}
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool hide=true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.orangeAccent,

      body:
      Stack(
        children: [
          Padding(padding: EdgeInsets.all(25),
          child: Text('\nWelcome\nBack to UHealthify\n\nPlease Provide Your Login Credentials to proceed',
          style:TextStyle(
            fontSize: 35,
            decorationColor: Colors.black,
            fontWeight: FontWeight.w300,
          ),
          )
          ),

          Container(
            width: double.infinity,
            margin: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.45),
            height: 470,
            decoration: BoxDecoration(
              gradient: SweepGradient(colors: [Colors.lightGreenAccent,Colors.pinkAccent,Colors.white10]),
              borderRadius:BorderRadius.only(topRight: Radius.circular(50),topLeft: Radius.circular(50))
            ),
            child: new Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("Sign In",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,
                fontSize: 25,inherit: true,
                ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(padding:EdgeInsets.all(5)),
                Text('Enter Your User Name/Email-ID',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  letterSpacing:1,
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
                    hintText: 'Enter Your UserName/Email ID',
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
                new Text('Enter The Password:',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  letterSpacing: 1,
                  wordSpacing: 1
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
                Align(
                  alignment: Alignment.centerRight,
                ),
                TextButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Forgot()));
                }, child:
                Text('Forgot Password?',style: new TextStyle(color: Colors.black,fontWeight: FontWeight.bold),
                ),
                  style: ButtonStyle(enableFeedback: true,
                  visualDensity: VisualDensity(vertical: 2,horizontal: 1)),
                ),
                ElevatedButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Apppage()));

                },
                  style: ButtonStyle(
                      alignment: Alignment.centerRight,
                  enableFeedback: true,
                  backgroundColor: MaterialStatePropertyAll(Colors.white),
                  animationDuration: Duration(minutes: 2),
                  mouseCursor: MaterialStateMouseCursor.clickable),
                    child:Text(('Sign In'),style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,inherit: true,
                    wordSpacing: 2,
                    letterSpacing: 0.3,
                    ),
                    ),
                ),
                Padding(padding: EdgeInsets.all(5)),
                new Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Do not Have An Account',style: TextStyle(fontWeight: FontWeight.bold,
                      fontSize:15
                    ),
                    ),
                    new TextButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>SignUpPage()));
                    },
                        child: new Text('Sign Up',style: new TextStyle(color: Colors.red,fontWeight: FontWeight.bold))),
                    new TextButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Details()));

                    }, child:Text('Details',style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black
                    ),)),

                  ],
                ),
                
              ],
            ),

          )
        ],
      ),
    );
    
  }
}

