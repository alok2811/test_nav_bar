import 'package:flutter/material.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int? index;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      bottomNavigationBar: ConvexAppBar(
        items: [
          TabItem(icon: Icons.home, title: "Home"),
          TabItem(icon: Icons.book, title: "Books"),
          TabItem(icon: Icons.add, title: "Add"),
          TabItem(icon: Icons.email, title: "Message"),
          TabItem(icon: Icons.person, title: "Profile"),
        ],
        backgroundColor: Colors.red,
        style: TabStyle.fixedCircle,

        onTap: (int i){
          setState(() {
            index = i;
          });
        },
      ),

      body: Builder(builder: (BuildContext context) {
        switch(index){
          case 0:
            return Container(
              color: Colors.amber,
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              alignment: Alignment.center,
              child: Text("Home"),
            );

          case 1:
            return Container(
              color: Colors.grey,
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              alignment: Alignment.center,
              child: Text("Books"),
            );

          case 2:
            return Container(
              color: Colors.white,
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              alignment: Alignment.center,
              child: Text("Add"),
            );

          case 3:
            return Container(
              color: Colors.green,
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              alignment: Alignment.center,
              child: Text("Message"),
            );

          case 4:
            return Container(
              color: Colors.blue,
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              alignment: Alignment.center,
              child: Text("Profile"),
            );

          default :
            return Container();

        }


      },),

    );
  }
}




