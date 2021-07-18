import 'package:flutter/material.dart';

class Inbox extends StatefulWidget {
  const Inbox({Key? key}) : super(key: key);

  @override
  _InboxState createState() => _InboxState();
}

class _InboxState extends State<Inbox> {
  int point=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(iconTheme: IconThemeData(color:Colors.black),
      backgroundColor: Colors.white,
      title: Text("elon_musk", style: TextStyle(color: Colors.black)),
        centerTitle: true,
       actions:[
        Icon(Icons.add, size: 40.0,),
      ],
      elevation: 1.0,),
      body: Container(
        height: double.infinity,
       child: ListView(
       children: [
       Column(children:[
         Padding(padding:EdgeInsets.all(10.0),
          child:Container(
            height: 40.0,

          child: TextField(
           obscureText: true,
            decoration: InputDecoration(
              labelText: "Search",
              prefixIcon: Icon(Icons.search),
              border: OutlineInputBorder(borderSide: BorderSide(color: Colors.grey),
                borderRadius: BorderRadius.circular(20.0),
              ),
              fillColor: Colors.grey[10],
              filled: true,

            ),
         )
          )),

       ListTile(
         leading: CircleAvatar(backgroundImage: AssetImage("asset/universe.jpg"),radius: 50.0,),
         title: Text("Jack"),
         subtitle: Text("Hey bro"),
         trailing: Icon(Icons.camera_alt_outlined),
       ),
         SizedBox(height:20.0 ,),
         ListTile(
           leading: CircleAvatar(backgroundImage: AssetImage("asset/fist.jpeg"),radius: 50.0,),
           title: Text("Jack"),
           subtitle: Text("Hey bro"),
           trailing: Icon(Icons.camera_alt_outlined),
         ),
         SizedBox(height:20.0 ,),
         ListTile(
           leading: CircleAvatar(backgroundImage: AssetImage("asset/second.jpeg"),radius: 50.0,),
           title: Text("Beast"),
           subtitle: Text("I am not"),
           trailing: Icon(Icons.camera_alt_outlined),
         ),
         SizedBox(height:20.0 ,),
         ListTile(
           leading: CircleAvatar(backgroundImage: AssetImage("asset/third.jpeg"),radius: 50.0,),
           title: Text("Bani"),
           subtitle: Text("Be Fit"),
           trailing: Icon(Icons.camera_alt_outlined),
         ),
         SizedBox(height:20.0 ,),
         ListTile(
           leading: CircleAvatar(backgroundImage: AssetImage("asset/four.jpeg"),radius:50.0),
           title: Text("Ghani"),
           subtitle: Text("Help Me"),
           trailing: Icon(Icons.camera_alt_outlined),
         ),
         SizedBox(height:20.0 ,),
         ListTile(
           leading: CircleAvatar(backgroundImage: AssetImage("asset/five.jpeg"),radius: 50.0,),
           title: Text("Biden"),
           subtitle: Text("Nuke"),
           trailing: Icon(Icons.camera_alt_outlined),
         ),
         SizedBox(height:20.0 ,),
        ListTile(
            leading: CircleAvatar(backgroundImage: AssetImage("asset/one.png"),radius: 50.0,),
            title: Text("Xi Ping"),
            subtitle: Text("Noodles"),
            trailing: Icon(Icons.camera_alt_outlined),),
         SizedBox(height:20.0 ,),
        ListTile(
            leading: CircleAvatar(backgroundImage: AssetImage("asset/two.png"),radius: 50.0,),
            title: Text("Clarke"),
            subtitle: Text("where are you"),
            trailing: Icon(Icons.camera_alt_outlined),),
         SizedBox(height:20.0 ,),
         ListTile(
           leading: CircleAvatar(backgroundImage: AssetImage("asset/three.jpg"),radius: 50.0,),
           title: Text("Mack"),
           subtitle: Text("BYE bro"),
           trailing: Icon(Icons.camera_alt_outlined),),
         SizedBox(height:20.0 ,),




       ]

       )
     ] )),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: point,
          selectedItemColor: Colors.black87,
          unselectedItemColor: Colors.black,
          items: [
            BottomNavigationBarItem(title:Text("Home"),icon:IconButton(onPressed:(){Navigator.pushNamed(context, "/newsfeed");}, icon:Icon(Icons.water_damage), )),
            BottomNavigationBarItem(title:Text("Search"),icon:IconButton(onPressed:(){Navigator.pushNamed(context, "/SearchPage");}, icon:Icon(Icons.search))),
            BottomNavigationBarItem(title:Text("Notification"),icon:IconButton(onPressed:(){}, icon:Icon(Icons.ondemand_video_rounded))),
            BottomNavigationBarItem(title:Text("Upload"),icon:IconButton(onPressed:(){Navigator.pushNamed(context, "/like");}, icon:Icon(Icons.favorite_outline))),
            BottomNavigationBarItem(title: Text("Profile"), icon:IconButton(onPressed:(){Navigator.pushNamed(context, "/profilepage");},icon: CircleAvatar(backgroundImage: AssetImage("asset/Godfather.jpeg")))


            )],


          onTap:(index){

            setState((){
              point=index;
            });}


      ) ,
    );
  }
}
