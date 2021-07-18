import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(
    home: Like()
  ));
}
class Like extends StatefulWidget {
  const Like({Key? key}) : super(key: key);

  @override
  _LikeState createState() => _LikeState();
}

class _LikeState extends State<Like> {
  int point=0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        toolbarHeight: 50.0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,

        children:[

        Container(width:100.0,child: TextButton(child: Text("Following",style: TextStyle(color:Colors.black,fontSize: 16.0),), onPressed: (){},)),
            Container(width:100.0, child:TextButton(child: Text("You",style: TextStyle(color:Colors.black,fontSize: 16.0)), onPressed: (){},)),]
      )
    ),
    body: Container(
      padding: EdgeInsets.all(20.0),
      height:2000.0,
      child: ListView(
          scrollDirection:Axis.vertical,
          children:[


         Column(
           crossAxisAlignment: CrossAxisAlignment.start,

            children:[


          Text("New",style:TextStyle(fontSize: 20.0)),
          SizedBox(height: 20.0,),
          ListTile(
            leading: CircleAvatar(backgroundImage:AssetImage("asset/fist.jpeg") ,),
            trailing: CircleAvatar(backgroundImage:AssetImage("asset/universe.jpg") ,),
            title: Row(
              children:[
                Text("Jack has liked your photo"),
                SizedBox(width: 10.0,),
                Text("1h",style: TextStyle(color: Colors.grey)),
              ]
            ),
          ),
          Divider(color: Colors.grey, height: 10.0,),
          ListTile(
            leading: CircleAvatar(backgroundImage:AssetImage("asset/fist.jpeg") ,),
            trailing: CircleAvatar(backgroundImage:AssetImage("asset/universe.jpg") ,),
            title: Row(
                children:[
                  Text("Jack has commented"),
                  SizedBox(width: 10.0,),
                  Text("1h",style: TextStyle(color: Colors.grey)),
                ]
            ),
          ),
          Divider(color: Colors.grey, height: 10.0,),
          Text("Today",style:TextStyle(fontSize: 20.0)),
          SizedBox(height: 20.0,),
          ListTile(
            leading: CircleAvatar(backgroundImage:AssetImage("asset/three.jpg") ,),
            trailing: CircleAvatar(backgroundImage:AssetImage("asset/universe.jpg") ,),
            title: Row(
                children:[
                  Text("Suzi has liked your photo"),
                  SizedBox(width: 10.0,),
                  Text("5h",style: TextStyle(color: Colors.grey)),
                ]
            ),
          ),
          Divider(color: Colors.grey, height: 20.0,),
          Text("This Week",style:TextStyle(fontSize: 20.0)),
          SizedBox(height: 20.0,),
          ListTile(
            leading: CircleAvatar(backgroundImage:AssetImage("asset/second.jpeg") ,),
            trailing: CircleAvatar(backgroundImage:AssetImage("asset/universe.jpg") ,),
            title: Row(
                children:[
                  Text("Dazy has liked your photo"),
                  SizedBox(width: 10.0,),
                  Text("Sat",style: TextStyle(color: Colors.grey)),
                ]
            ),

          ),
          Divider(color: Colors.grey, height: 10.0,),
          ListTile(
            leading: CircleAvatar(backgroundImage:AssetImage("asset/fist.jpeg") ,),
            trailing: CircleAvatar(backgroundImage:AssetImage("asset/universe.jpg") ,),
            title: Row(
                children:[
                  Text("Ben has liked your photo"),
                  SizedBox(width: 10.0,),
                  Text("Fri",style: TextStyle(color: Colors.grey)),
                ]
            ),
          ),
          Divider(color: Colors.grey, height: 10.0,),
          ListTile(
            leading: CircleAvatar(backgroundImage:AssetImage("asset/four.jpeg") ,),
            trailing: CircleAvatar(backgroundImage:AssetImage("asset/universe.jpg") ,),
            title: Row(
                children:[
                  Text("Gwen has liked your photo"),
                  SizedBox(width: 10.0,),
                  Text("Fri",style: TextStyle(color: Colors.grey)),
                ]
            ),
          ),Divider(color: Colors.grey, height: 10.0,),
          ListTile(
            leading: CircleAvatar(backgroundImage:AssetImage("asset/five.jpeg") ,),
            trailing: CircleAvatar(backgroundImage:AssetImage("asset/universe.jpg") ,),
            title: Row(
                children:[
                  Text("Gwen has commented"),
                  SizedBox(width: 10.0,),
                  Text("Thr",style: TextStyle(color: Colors.grey)),
                ]
            ),
          ),
          Divider(color: Colors.grey, height: 10.0,),
          ListTile(
            leading: CircleAvatar(backgroundImage:AssetImage("asset/Godfather.jpeg") ,),
            trailing: CircleAvatar(backgroundImage:AssetImage("asset/universe.jpg") ,),
            title: Row(
                children:[
                  Text("Rock has liked your photo"),
                  SizedBox(width: 10.0,),
                  Text("Wed",style: TextStyle(color: Colors.grey)),
                ]
            ),
          ),
          Divider(color: Colors.grey, height: 10.0,),
          Text("Last Month",style:TextStyle(fontSize: 20.0)),
          ListTile(
            leading: CircleAvatar(backgroundImage:AssetImage("asset/Godfather.jpeg") ,),
            trailing:ElevatedButton(child: Text("Message"),onPressed: (){},),
            title: Row(
                children:[
                  Text("Rock followed you"),
                  SizedBox(width: 10.0,),
                  Text("Wed",style: TextStyle(color: Colors.grey)),
                ]
            ),
          )
        ],

      )]
    ),),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: point,
          selectedItemColor: Colors.black87,
          unselectedItemColor: Colors.black,
          items: [
            BottomNavigationBarItem(title:Text("Home"),icon:IconButton(onPressed:(){Navigator.pushNamed(context, "/newsfeed");}, icon:Icon(Icons.water_damage), )),
            BottomNavigationBarItem(title:Text("Search"),icon:IconButton(onPressed:(){Navigator.pushNamed(context, "/SearchPage");}, icon:Icon(Icons.search))),
            BottomNavigationBarItem(title:Text("Notification"),icon:IconButton(onPressed:(){}, icon:Icon(Icons.ondemand_video_rounded))),
            BottomNavigationBarItem(title:Text("Upload"),icon:IconButton(onPressed:(){}, icon:Icon(Icons.favorite_outline))),
            BottomNavigationBarItem(title: Text("Profile"), icon:IconButton(onPressed:(){Navigator.pushNamed(context, "/profilepage");},icon: CircleAvatar(backgroundImage: AssetImage("asset/Godfather.jpeg")))


            )],


          onTap:(index){

            setState((){
              point=index;
            });}


      ) ,);
  }
}
