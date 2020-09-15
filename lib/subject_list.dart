
import 'package:CET_App/subtopicpage.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class subjectList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          color: Color.fromRGBO(70, 179, 230,1),
          child: Padding(
            padding: const EdgeInsets.only(left: 40),
            child: Row(
              children: [
                Text(
                  "CET",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Montserrat'),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "App",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontFamily: 'Montserrat'),
                )
              ],
            ),
          ),
        ),
        Container(
          color: Color.fromRGBO(70, 179, 230,1),
          child: Padding(
            padding: const EdgeInsets.only(top: 55),
            child: Container(
              height: MediaQuery.of(context).size.height - 185,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius:
                      BorderRadius.only(topLeft: Radius.circular(75))),
              child: ListView(
                primary: false,
                padding: EdgeInsets.only(left: 25, right: 20),
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top: 45.0),
                    child: Container(
                      height: MediaQuery.of(context).size.height - 300.0,
                      child: ListView(
                        children: [
                          _buildCategoryView(
                              'assets/images/031-atom.png', 'Physics',context),
                          _buildCategoryView(
                              'assets/images/036-test-tubes.png', 'Chemistry',context),
                          _buildCategoryView(
                              'assets/images/math.png', 'Mathematics',context),
                          _buildCategoryView('assets/images/dna.png', 'Biology',context)
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        )
      ],
    );
  }

  Widget _buildCategoryView(String imgPath, String subName,BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 10, left: 24, right: 10),
      child: Column(
      children:[ 
        
        InkWell(
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => DetailsPage(heroTag: imgPath, subName: subName) ));
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              child: Row(
                children: [
                  Hero(
                    tag: imgPath,
                    child: Image(
                      image: AssetImage(imgPath),
                      fit: BoxFit.cover,
                      height: 60.0,
                      width: 60.0,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        subName,
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      IconButton(
                          icon: Icon(
                            EvaIcons.bookOpenOutline,
                            color: Colors.black,
                          ),
                          onPressed: null)
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
      SizedBox(height: 10,),

      Padding(padding: EdgeInsets.only(left:65,right: 10)
      ,
      child: Container(
        height: 1,
        color: Colors.grey[200],
      )
      )
      
      ],
    ),
    );
  }
}
