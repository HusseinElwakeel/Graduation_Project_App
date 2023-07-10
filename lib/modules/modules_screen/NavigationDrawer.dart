

import 'package:flutter/material.dart';
import 'package:graduation/modules/modules_screen/HomePage.dart';
import 'package:graduation/modules/modules_screen/ImageGeneration.dart';
import 'package:graduation/modules/modules_screen/TextSimplification.dart';
import 'package:graduation/modules/modules_screen/VideoConversion.dart';

class NavigationDrawerWidget extends StatefulWidget {
  @override
  State<NavigationDrawerWidget> createState() => _NavigationDrawerWidgetState();
}

class _NavigationDrawerWidgetState extends State<NavigationDrawerWidget> {
 final Padding = EdgeInsets.symmetric(horizontal: 20);

  @override
  Widget build(BuildContext context) {

    // to make the drawer
    return Drawer(
child: Material(
  color: Color.fromRGBO(230 ,26, 26, 1),
  child: ListView(
    padding: Padding,
    children: <Widget>[
      // element of the drawer
      SizedBox(height: 48,),
      buildMenuItem(
          text: "Home Page",
          icon: Icons.home,
        onClicked: () =>selectedItem(context, 0),
      ),
      SizedBox(height: 16,),
      buildMenuItem(
          text: "Image Generation",
          icon: Icons.image,
        onClicked: ()=> selectedItem(context, 1),
      ),
      SizedBox(height: 16,),
      buildMenuItem(
          text: "Text Simplification",
          icon: Icons.text_snippet,
        onClicked:()=> selectedItem(context,2),
      ),
      SizedBox(height: 16,),
      buildMenuItem(
          text: "Video Conversion",
          icon: Icons.video_call,
        onClicked: () =>selectedItem(context,3)
      ),

      // to make divider
      SizedBox(height: 24,),
      Divider(color: Colors.white70,),
      SizedBox(height: 24,),



    ],
  ),
),
    );
  }
}

Widget buildMenuItem ({
  required String text,
  required IconData icon,
  VoidCallback? onClicked,
}){
  final color = Colors.white;

  return ListTile(
    leading:  Icon(
      icon, color: color,
    ),
    title:  Text(text,
    style: TextStyle(
      color: color,
    ),
    ),
    onTap: onClicked,
    // hoverColor: Colors.amber,

  );

}

void selectedItem(BuildContext context, int index){
  switch(index){
    case 0:
      Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => HomePage(),
      ));
      break;

    case 1:
      Navigator.of(context).push(MaterialPageRoute(
          builder: (context)=>  ImageGeneration(),
      ));
      break;
    case 2:
      Navigator.of(context).push(MaterialPageRoute(builder: (context) =>
          TextSimplification(),
      ));
      break;
    case 3:
      Navigator.of(context).push(MaterialPageRoute(
          builder: (context)=> VideoConversion(),
      ));

  }
}