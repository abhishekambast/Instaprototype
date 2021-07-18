import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'main.dart';
import 'profilepage.dart';
import 'SearchPage.dart';
import 'SignUpPage.dart';
import 'LogInpage.dart';
import 'Inbox.dart';
import 'LikePage.dart';

void main() {
  runApp(MaterialApp(
      initialRoute: '/',
  routes:{
        "/":(context)=>Home(),
    "/main":(context)=>Newsfeed(),
    "/profilepage":(context)=>ProfilePage(),
    "/SearchPage":(context)=>Searchpage(),
    "/LogInPage":(context)=>LogIn(),
    "/SignUpPage": (context)=>SignUpPage(),
    "/newsfeed": (context)=>Newsfeed(),
    "/inbox":(context)=>Inbox(),
    "/like":(context)=>Like(),


  },));}



    class Home extends StatefulWidget {
      const Home({Key? key}) : super(key: key);


  @override
  _HomeState createState() => _HomeState();

}

class _HomeState extends State<Home> {

      @override
      Widget build(BuildContext context) {
        return
    Scaffold(



          body:Center(child: Column(

              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Container(child: Padding(
                  child: Text('Instagram',
                      style: TextStyle(fontFamily: "Newfont",
                        fontSize: 40.0,
                        fontWeight:FontWeight.bold,

                      )), padding: EdgeInsets.all(100.0))

              ),


                Container(child:Padding(child: ElevatedButton(onPressed:(){Navigator.pushNamed(context, '/LogInPage');} ,
                    child: Text("Login",
                        style: TextStyle(fontSize: 16.0)),
                    style: ButtonStyle(
                        padding: MaterialStateProperty.all(EdgeInsets.symmetric(vertical:10,horizontal: 30.0))
                    )),
                    padding: EdgeInsets.all(50.0)
                ),

                ),
                Container(child:Padding(child: ElevatedButton(onPressed:(){Navigator.pushNamed(context, '/SignUpPage');} ,
                    child: Text("Sign Up",
                      style: TextStyle(fontSize: 16.0),
                    ),
                    style:ButtonStyle(
                        padding: MaterialStateProperty.all(EdgeInsets.symmetric(vertical: 10.0, horizontal: 40.0),

                        ) )

                ),
                  padding: EdgeInsets.all(10.0),

                ))]

          )
          )
      );
}}