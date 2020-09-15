import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';

class DetailsPage extends StatefulWidget {
  final heroTag;
  final subName;

  DetailsPage({this.heroTag, this.subName});
  @override
  _DetailsPageState createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff7a9be),
      appBar: AppBar(
          centerTitle: true,

          // title: Text('CET_App', style: TextStyle(color: Colors.black87)),
          elevation: 0,
          backgroundColor: Color(0xff7a9be),
          brightness: Brightness.light,
          actionsIconTheme: IconThemeData(color: Colors.black),

          iconTheme: IconThemeData(color: Colors.white),

          
          actions: [
            //Search Button

            IconButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/searchicon');
              },
              icon: Icon(EvaIcons.searchOutline),
              iconSize: 30,
              color: Colors.white,
            ),

            //Cart Button

            IconButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/cartpage');
              },
              icon: Icon(EvaIcons.download),
              iconSize: 30,
              color: Colors.white,
            )
          ],
        ),
      
      body: ListView(
        children: [
          Stack(
            children: [
              Container(
                height: MediaQuery.of(context).size.height - 82.0,
                width:  MediaQuery.of(context).size.width,
                color: Colors.transparent,
              ),

              Positioned(
                top:75.0,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(45.0),
                      topRight: Radius.circular(45),
                      
                    ),
                    color: Colors.white,
                    
                  ),
                  height: MediaQuery.of(context).size.height - 100,
                  width: MediaQuery.of(context).size.width
                ),
                ),
                Positioned(
                  top:23.0,
                  left: (MediaQuery.of(context).size.width/2) -100
                  ,
                  child: Hero(tag: widget.heroTag,
                   child: Container(
                     decoration: BoxDecoration(
                       image: DecorationImage(
                         image: AssetImage(widget.heroTag),
                         fit: BoxFit.cover)
                     ),
                     height: 160.0,
                     width: 160.0,
                   )))
            ],
          )
        ],
      ),


    );
  }
}
