import 'package:circleavatar/SearchPage.dart';
import 'package:circleavatar/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(
    routes: {
      '/newsfeed':(context)=>Newsfeed(),
      '/search':(context)=>Searchpage(),
      '/profilepage':(context)=>ProfilePage(),
    },
  ));
}
class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {

int point=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,

        title:
          Text("elon_musk",
      style: TextStyle(fontSize:16.0, fontWeight: FontWeight.bold,color: Colors.black)),
      actions: [
        IconButton(onPressed:(){}, icon:Icon(Icons.send, color: Colors.black,))
      ],
      centerTitle:true,
      elevation: 3.0,
      ),
      body: Container(
      height: double.infinity,
      child: ListView(
      children: [
      Container(
      height:170.0,


        child: Column(
          children:[
        Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [Column(
        children:[

      CircleAvatar(
      backgroundImage: AssetImage("asset/Godfather.jpeg"),
      radius: 50.0,
      ),
      Text("Elon Musk")]),
      Column(
      mainAxisAlignment
      : MainAxisAlignment.center,
                  children: [
                    Text("8",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20.0)),
                    Text("Posts",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20.0)),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("54",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20.0)),
                    Text("Followers",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20.0)),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("32", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20.0)),
                    Text("Following",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20.0)),
                  ],
                )
              ],
            ),


          ElevatedButton(onPressed: (){}, child:Text('Edit Profile',
          style: TextStyle(color: Colors.black)),
            style:ButtonStyle(
              padding: MaterialStateProperty.all(EdgeInsets.fromLTRB(170, 10, 170, 0.0)),
              backgroundColor: MaterialStateProperty.all(Colors.grey[200]),
              elevation: MaterialStateProperty.all(0.0)

          ),

          )]),
      ) ,
          Divider(
        height: 20.0,
        color: Colors.grey[600],
      ),
      Container(height:1000.0,child:GridView.count(crossAxisCount:2,primary: false,
      scrollDirection: Axis.vertical,
      mainAxisSpacing: 5.0,
      crossAxisSpacing:5.0,


      children: [
       Container(child:Image.asset("asset/four.jpg"),),
        Image.asset("asset/three.jpg"),
        Image.asset("asset/one.png"),
        Image.asset("asset/two.png"),
        Image.asset("asset/Godfather.jpeg"),
        Image.asset("asset/four.jpg"),
        Image.asset("asset/three.jpg"),
        Image.asset("asset/one.png"),


      ],))],

        ),

      ),
    bottomNavigationBar: BottomNavigationBar(
    currentIndex: point,
    selectedItemColor: Colors.black87,
    unselectedItemColor: Colors.black,
    items: [
    BottomNavigationBarItem(title:Text("Home"),icon:IconButton(onPressed:(){Navigator.pushNamed(context, '/newsfeed');}, icon:Icon(Icons.water_damage), )),
    BottomNavigationBarItem(title:Text("Search"),icon:IconButton(onPressed:(){Navigator.pushNamed(context, '/SearchPage');}, icon:Icon(Icons.search))),
    BottomNavigationBarItem(title:Text("Notification"),icon:IconButton(onPressed:(){}, icon:Icon(Icons.ondemand_video))),
    BottomNavigationBarItem(title:Text("Upload"),icon:IconButton(onPressed:(){Navigator.pushNamed(context, "/like");}, icon:Icon(Icons.favorite_outline))),
    BottomNavigationBarItem(title: Text("Profile"), icon:IconButton(onPressed:(){Navigator.pushNamed(context, '/profilepage');},icon: CircleAvatar(backgroundImage: AssetImage("asset/Godfather.jpeg")))


    )],


    onTap:(index){

    setState((){
    point=index;
    });}));
  }
}
