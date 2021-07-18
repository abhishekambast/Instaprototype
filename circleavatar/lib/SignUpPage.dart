import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'LogInpage.dart';
import 'home.dart';


class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
      ),
      body:
      Center(child: Column(

          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Container(child: Padding(
      child: Text('Instagram',
          style: TextStyle(fontFamily: "Newfont",
            fontSize: 40.0,
            fontWeight:FontWeight.bold,

          )), padding: EdgeInsets.all(60.0))

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
               SizedBox(height:10.0),
    TextField(obscureText: true,
    decoration: InputDecoration(
        border: InputBorder.none,


    fillColor: Colors.grey[200],
    filled: true,
    labelText:"Confirm Password"),),
               SizedBox(height:10.0),
    TextField(obscureText: true,
    decoration: InputDecoration(
      border: InputBorder.none,



    fillColor: Colors.grey[200],
    filled: true,
    labelText:"Email id",
     )
    )])),


          ElevatedButton(onPressed:(){Navigator.pushNamed(context,'/LogInPage');}, child:Text("Sign In"),
          style: ButtonStyle(
            backgroundColor:MaterialStateProperty.all(Colors.indigoAccent[10]),
            padding: MaterialStateProperty.all(EdgeInsets.fromLTRB(30, 10, 30, 10))
          ))])));
  }
}

