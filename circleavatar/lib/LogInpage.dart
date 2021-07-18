import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'main.dart';
import 'home.dart';


  class LogIn extends StatefulWidget {
    const LogIn({Key? key}) : super(key: key);

  @override
  _LogInState createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar:AppBar(iconTheme: IconThemeData(color: Colors.black),
          backgroundColor: Colors.white,
        ),
        body:Center(
          child: Column(

              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Container(child: Padding(
          child: Text('Instagram',
              style: TextStyle(fontFamily: "Newfont",
                fontSize: 40.0,
                fontWeight:FontWeight.bold,

              )), padding: EdgeInsets.all(30.0))

      ),
      Padding( padding: EdgeInsets.all(20.0) ,
      child: Column(
      children:[TextField(obscureText: true,
      decoration: InputDecoration(
      border: InputBorder.none,


      fillColor: Colors.grey[200],
      filled: true,
      labelText:"Username"),
      ),
      SizedBox(height:10.0),
      TextField(obscureText: true,
      decoration: InputDecoration(
      border: InputBorder.none,


      fillColor: Colors.grey[200],
      filled: true,
      labelText:"Password"),),
      Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text("Forgot Your Password ?",
          style: TextStyle(color: Colors.indigoAccent[100],
          fontWeight: FontWeight.bold, fontSize: 14.0),)
        ],
      ),



      ElevatedButton(onPressed:(){Navigator.pushReplacementNamed(context, '/newsfeed');}, child:Text("Log In",
      style: TextStyle(fontSize: 10.0),),
      style: ButtonStyle(
      backgroundColor:MaterialStateProperty.all(Colors.indigoAccent[10]),
      padding: MaterialStateProperty.all(EdgeInsets.fromLTRB(170, 10, 170, 10)))
        )
      ]))])
       )); }
}

