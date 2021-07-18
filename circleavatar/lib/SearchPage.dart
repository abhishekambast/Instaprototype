import 'package:circleavatar/main.dart';
import 'package:circleavatar/profilepage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


  class Searchpage extends StatefulWidget {

  @override
  _SearchpageState createState() => _SearchpageState();
}

class _SearchpageState extends State<Searchpage> {
    int point=0;

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(iconTheme: IconThemeData(color: Colors.black),
          backgroundColor: Colors.white,
          toolbarHeight: 40.0,
          title:Row(
          children:[Container(
            width: 250.0,
            child:TextField(
            obscureText: true,
            decoration: InputDecoration(
              border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(20.0)),
              borderSide: const BorderSide(
              color: Colors.grey,
              )),
              prefixIcon: Icon(Icons.search),
              fillColor: Colors.grey[200],
              filled: true,



              labelText:"Search",
            ),

          )),
           SizedBox(width:10.0),
           Icon(Icons.wallpaper_rounded,
          color: Colors.black, size: 40.0, ),]

        ),

      ),
      body:Container(height:3000.0,
          child:

            GridView.count(crossAxisCount:2,primary: false,
          scrollDirection: Axis.vertical,
          mainAxisSpacing: 5.0,
          crossAxisSpacing:5.0,


          children: [
            Image.asset("asset/four.jpg"),
        Image.asset("asset/three.jpg"),
        Image.asset("asset/one.png"),
        Image.asset("asset/two.png"),
        Image.asset("asset/Godfather.jpeg"),
        Image.asset("asset/four.jpg"),
        Image.asset("asset/three.jpg"),
        Image.asset("asset/one.png"),
            Image.asset("asset/fist.jpeg"),
            Image.asset("asset/second.jpeg")],)),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: point,
          selectedItemColor: Colors.black87,
          unselectedItemColor: Colors.black,
          items: [
            BottomNavigationBarItem(title:Text("Home"),icon:IconButton(onPressed:(){Navigator.pushNamed(context, "/newsfeed");}, icon:Icon(Icons.water_damage), )),
            BottomNavigationBarItem(title:Text("Search"),icon:IconButton(onPressed:(){Navigator.pushNamed(context, "/SearchPage");}, icon:Icon(Icons.search))),
            BottomNavigationBarItem(title:Text("Notification"),icon:IconButton(onPressed:(){}, icon:Icon(Icons.ondemand_video_outlined))),
            BottomNavigationBarItem(title:Text("Upload"),icon:IconButton(onPressed:(){Navigator.pushNamed(context, "/like");}, icon:Icon(Icons.favorite_outline))),
            BottomNavigationBarItem(title: Text("Profile"), icon:IconButton(onPressed:(){Navigator.pushNamed(context, "/profilepage");},icon: CircleAvatar(backgroundImage: AssetImage("asset/Godfather.jpeg")))


            )],


          onTap:(index){

            setState((){
              point=index;
            });}


      ) ,);
    }
}



