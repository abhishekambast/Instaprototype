import 'package:flutter/material.dart';





class Newsfeed extends StatefulWidget {
  const Newsfeed({Key? key}) : super(key: key);


  @override
  _NewsfeedState createState() => _NewsfeedState();
}

class _NewsfeedState extends State<Newsfeed> {
  int point=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(iconTheme: IconThemeData(color: Colors.black),

            title: Text("Instagram",
                style:TextStyle(
                  fontFamily: "Newfont",
                  fontWeight:FontWeight.bold,
                  fontSize: 30.0,
                  color: Colors.black87,
                )
            ),
            actions: [
              IconButton(onPressed: (){Navigator.pushNamed(context, "/inbox");}, icon: Icon(Icons.send, color: Colors.black,))
            ],
            backgroundColor: Colors.white,
            centerTitle: true,
          elevation: 0.0,

        ),
        body: Container(
            height: double.infinity,
            child: ListView(
              scrollDirection: Axis.vertical,
                children: [Container(
                    height: 130.0,
                    width: double.infinity,
                    child: Padding(
                        padding: EdgeInsets.fromLTRB(5.0, 10.0, 10.0,0.0),

                        child: ListView(
                          scrollDirection: Axis.horizontal,


                          children: [ Row(


                              children: [

                                CircleAvatar(radius: 45.0,
                                    backgroundColor: Colors.red,
                                    child: CircleAvatar(
                                      backgroundImage: AssetImage(
                                          "asset/one.png"),
                                      radius: 40.0,
                                    )),
                                SizedBox(width: 10.0,),
                                CircleAvatar(
                                  backgroundImage: AssetImage("asset/two.png"),
                                  radius: 40.0,),
                                SizedBox(width: 10.0,),
                                CircleAvatar(
                                  backgroundImage: AssetImage(
                                      "asset/three.jpg"),
                                  radius: 40.0,),
                                SizedBox(width: 10.0,),
                                CircleAvatar(
                                  backgroundImage: AssetImage("asset/four.jpg"),
                                  radius: 40.0,),
                                SizedBox(width: 10.0,),
                                CircleAvatar(
                                  backgroundImage: AssetImage(
                                      "asset/universe.jpg"),
                                  radius: 40.0,),
                                SizedBox(width: 10.0,),
                                CircleAvatar(
                                  backgroundImage: AssetImage(
                                      "asset/Godfather.jpeg"),
                                  radius: 40.0,),
                                SizedBox(width: 10.0,),

                              ])
                          ]
                          ,


                        ))

                ),
                  Divider(height: 10.0,
                      color: Colors.grey,),

                  ListTile(
                    leading: CircleAvatar(
                      backgroundImage: AssetImage("asset/Godfather.jpeg"),
                      radius: 20.0,),
                    title: Text("Elon Musk"),
                    subtitle: Text("New York)",
                    ),

                  ),
                  Image.asset("asset/universe.jpg"),
                  Row(
                    children: [
                      IconButton(onPressed: (){
                        ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                                content: const Text('You have liked this post')));
                      }, icon:Icon(Icons.favorite_outlined,
                        size: 30,) ),
                      IconButton(onPressed: (){}, icon: Icon(Icons.comment,
                        size: 30,)),
                      IconButton(onPressed: (){}, icon: Icon(Icons.send,
                        size: 30,)),
                    ],
                  ),

            ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage("asset/one.png"),
                radius: 20.0,),
              title: Text("Robert"),
              subtitle: Text("New York)",
              ),

            ),
                  Image.asset("asset/fist.jpeg"),
                  Row(
                    children: [
                      IconButton(onPressed: (){
                        ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                            content: const Text('You have liked this post')));
                      }, icon:Icon(Icons.favorite,
                      size: 30,) ),
                      IconButton(onPressed: (){}, icon: Icon(Icons.comment,
                      size: 30,)),
                      IconButton(onPressed: (){}, icon: Icon(Icons.send,
                      size: 30,)),
                    ],
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      backgroundImage: AssetImage("asset/two.png"),
                      radius: 20.0,),
                    title: Text("Krish"),
                    subtitle: Text("New York)",
                    ),

                  ),
                  Image.asset("asset/second.jpeg"),
                  Row(
                    children: [
                      IconButton(onPressed: (){
                        ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                                content: const Text('You have liked this post')));
                      }, icon:Icon(Icons.favorite,
                        size: 30,) ),
                      IconButton(onPressed: (){}, icon: Icon(Icons.comment,
                        size: 30,)),
                      IconButton(onPressed: (){}, icon: Icon(Icons.send,
                        size: 30,)),
                    ],
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      backgroundImage: AssetImage("asset/three.jpg"),
                      radius: 20.0,),
                    title: Text("Jack"),
                    subtitle: Text("New York)",
                    ),

                  ),
                  Image.asset("asset/third.jpeg"),
                  Row(
                    children: [
                      IconButton(onPressed: (){
                        ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                                content: const Text('You have liked this post')));
                      }, icon:Icon(Icons.favorite,
                        size: 30,) ),
                      IconButton(onPressed: (){}, icon: Icon(Icons.comment,
                        size: 30,)),
                      IconButton(onPressed: (){}, icon: Icon(Icons.send,
                        size: 30,)),
                    ],
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      backgroundImage: AssetImage("asset/four.jpg"),
                      radius: 20.0,),
                    title: Text("Chun"),
                    subtitle: Text("New York)",
                    ),

                  ),
                  Image.asset("asset/four.jpeg"),
                  Row(
                    children: [
                      IconButton(onPressed: (){
                        ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                                content: const Text('You have liked this post')));
                      }, icon:Icon(Icons.favorite,
                        size: 30,) ),
                      IconButton(onPressed: (){}, icon: Icon(Icons.comment,
                        size: 30,)),
                      IconButton(onPressed: (){}, icon: Icon(Icons.send,
                        size: 30,)),
                    ],
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      backgroundImage: AssetImage("asset/two.png"),
                      radius: 20.0,),
                    title: Text("Bruce"),
                    subtitle: Text("New York)",
                    ),

                  ),
                  Image.asset("asset/five.jpeg"),
                  Row(
                    children: [
                      IconButton(onPressed: (){
                        ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                                content: const Text('You have liked this post')));
                      }, icon:Icon(Icons.favorite,
                        size: 30,) ),
                      IconButton(onPressed: (){}, icon: Icon(Icons.comment,
                        size: 30,)),
                      IconButton(onPressed: (){}, icon: Icon(Icons.send,
                        size: 30,)),
                    ],
                  ),])),
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
      }}





