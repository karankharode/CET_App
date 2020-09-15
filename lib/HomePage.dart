import 'dart:ui';
import 'package:CET_App/MockTestPage.dart';
import 'package:CET_App/formulaePage.dart';
import 'package:CET_App/prevYrPaperPage.dart';
import 'package:CET_App/quizPage.dart';
import 'package:CET_App/subject_list.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _page = 0;
  final List<Widget> _children = [
    subjectList(),
    MockTestPage(),
    PrevPaper(),
    QuizPage(),
    FormulaPage()

  ];
  var homeIcon = EvaIcons.homeOutline,
      mockIcon = EvaIcons.barChartOutline,
      prevYrPaperIcon = EvaIcons.fileTextOutline,
      quizIcon = EvaIcons.checkmarkSquareOutline,
      formulaeIcon = EvaIcons.bookmarkOutline;

  GlobalKey _bottomNavigationKey = GlobalKey();
  var home = 0;
  //Drawer Animation Variables

  double xOffset = 0;
  double yOffset = 0;
  double zOffset = 0;
  double scaleFactor = 1;

  bool isDrawerOpen = false;

  @override
  Widget build(BuildContext context) {
    // SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    //     statusBarColor: Colors.white,
    //     statusBarBrightness: Brightness.light,
    //     statusBarIconBrightness: Brightness.light,
    //     systemNavigationBarColor: Colors.white,
    //     systemNavigationBarIconBrightness: Brightness.light));

    return Scaffold(
        extendBody: true,
        backgroundColor: Color.fromARGB(1, 70, 179, 230),
        appBar: AppBar(
          centerTitle: true,

          // title: Text('CET_App', style: TextStyle(color: Colors.black87)),
          elevation: 0,
          backgroundColor: Color.fromRGBO(70, 179, 230,1),
          brightness: Brightness.light,
          actionsIconTheme: IconThemeData(color: Colors.black),

          iconTheme: IconThemeData(color: Colors.white),

          //drawer button

          leading: isDrawerOpen
              ? IconButton(
                  icon: Icon(EvaIcons.arrowBack),
                  onPressed: () {
                    setState(() {
                      xOffset = 0;
                      yOffset = 0;
                      zOffset = 0;
                      scaleFactor = 1;
                      isDrawerOpen = false;
                    });
                  },
                )
              : IconButton(
                  onPressed: () {
                    setState(() {
                      xOffset = 210;
                      yOffset = 40;
                      scaleFactor = 0.9;
                      isDrawerOpen = true;
                    });
                  },
                  icon: Icon(EvaIcons.menu2Outline),
                  iconSize: 30,
                ),

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
        bottomNavigationBar: CurvedNavigationBar(
          backgroundColor: Colors.white,
          buttonBackgroundColor: Color.fromRGBO(70, 179, 250,1),
          color: Color.fromRGBO(70, 179, 230,1),
          height: 50,
          items: <Widget>[
            Icon(
              homeIcon,
              size: 30,
              color: Colors.white,
            ),
            Icon(
              mockIcon,
              size: 30,
              color: Colors.white,
            ),
            Icon(
              prevYrPaperIcon,
              size: 30,
              color: Colors.white,
            ),
            Icon(
              quizIcon,
              size: 30,
              color: Colors.white,
            ),
            Icon(
              formulaeIcon,
              size: 30,
              color: Colors.white,
            ),
          ],
          animationCurve: Curves.easeInOut,
          animationDuration: Duration(milliseconds: 400),
          onTap: (index) {
            //Handle button tap

            setState(() {
              _page = index;
              if (index == 0) {
                homeIcon = EvaIcons.homeOutline;
                mockIcon = EvaIcons.barChart;
                prevYrPaperIcon = EvaIcons.fileText;
                quizIcon = EvaIcons.checkmarkSquare;
                formulaeIcon = EvaIcons.bookmark;
              } else if (index == 1) {
                homeIcon = EvaIcons.home;
                mockIcon = EvaIcons.barChartOutline;
                prevYrPaperIcon = EvaIcons.fileText;
                quizIcon = EvaIcons.checkmarkSquare;
                formulaeIcon = EvaIcons.bookmark;
                homeIcon = EvaIcons.home;
                // Navigator.of(context).pushNamed('/mocktestpage');
              } else if (index == 2) {
                homeIcon = EvaIcons.home;
                mockIcon = EvaIcons.barChart;
                prevYrPaperIcon = EvaIcons.fileTextOutline;
                quizIcon = EvaIcons.checkmarkSquare;
                formulaeIcon = EvaIcons.bookmark;
                // Navigator.of(context).pushNamed('/prevyrpaperpage');
              } else if (index == 3) {
                homeIcon = EvaIcons.home;
                mockIcon = EvaIcons.barChart;
                prevYrPaperIcon = EvaIcons.fileText;
                quizIcon = EvaIcons.checkmarkSquareOutline;
                formulaeIcon = EvaIcons.bookmark;

                // Navigator.push(
                //     context,
                //     new MaterialPageRoute(
                //         builder: (context) => new QuizPage()));
              } else if (index == 4) {
                homeIcon = EvaIcons.home;
                mockIcon = EvaIcons.barChart;
                prevYrPaperIcon = EvaIcons.fileText;
                quizIcon = EvaIcons.checkmarkSquare;
                formulaeIcon = EvaIcons.bookmarkOutline;
                // Navigator.of(context).pushNamed('/formulapage');
              } else {
                homeIcon = EvaIcons.home;
                mockIcon = EvaIcons.barChart;
                prevYrPaperIcon = EvaIcons.fileText;
                quizIcon = EvaIcons.checkmarkSquare;
                formulaeIcon = EvaIcons.bookmark;
              }
            });
          },
        ),
        // body: Container(color: Color.fromRGBO(143, 148, 251, 1))

        body: _children[_page]    

        );
  }

  

}
