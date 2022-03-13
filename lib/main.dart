import "package:flutter/material.dart";
import 'package:flutter_application_logicalcode/homepage.dart';

void main() {
  runApp(MaterialApp(
    title: "Exploring UI Widgets",
    home: Scaffold(
      appBar: AppBar(title: Text("Basic list view"),),
      body: listviewshow(),),
    debugShowCheckedModeBanner: false,
  ));
  
}

Widget listviewshow() {
  var listview = ListView(
    children: [
       ListTile(
        leading: CircleAvatar(child: Text("CH"),),
        title: Text("Chennai"),
        trailing: Icon(Icons.place_outlined),
        onTap: () {
          debugPrint("clicked");
        },
        ),
      const ListTile(
        title: Text("cities are adding!!",textAlign: TextAlign.center,style: TextStyle(color: Colors.red),),
      ),
      Column(
        children: [
          Container(
            color: Colors.yellow,
            padding: EdgeInsets.all(10.0),
            child: homepage()
            ),
        ],
      )
    ],
  );
  return (listview);
}