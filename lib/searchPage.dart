import 'package:flutter/material.dart';
import 'package:youtube_ui/HomePage.dart';
class SearchPage extends StatefulWidget{
  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context){

  return Scaffold(
    appBar: AppBar(
      iconTheme: IconThemeData(color: Colors.black,),
      backgroundColor: Colors.white,
      title: Container(
        child: TextFormField(
          decoration: new InputDecoration(
            fillColor: Colors.grey,
          ),
          style: TextStyle(
            fontSize: 25,
          ),
        )
      ),
      actions: <Widget>[
        IconButton(
          icon: Icon(Icons.keyboard_voice,
          color: Colors.black,),
          onPressed: (){},
        ),
      ],
    ),
  );
}
}