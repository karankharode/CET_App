import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class PrevPaper extends StatefulWidget {
  @override
  _PrevPaperState createState() => _PrevPaperState();
}

class _PrevPaperState extends State<PrevPaper> {
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
                  "Prev Yr",
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
                  "Ques papers",
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
                      child: SingleChildScrollView(
                          child: Column(
                        children: [
                          _buildCategoryView(
                              'assets/images/copy.png', '2019 Paper 1'),
                          _buildCategoryView(
                              'assets/images/copy.png', '2019 Paper 2'),
                          _buildCategoryView(
                              'assets/images/copy.png', '2019 Paper 3'),
                          _buildCategoryView(
                              'assets/images/copy.png', '2019 Paper 4'),
                          _buildCategoryView('assets/images/copy.png', '2018'),
                          _buildCategoryView('assets/images/copy.png', '2017'),
                          _buildCategoryView('assets/images/copy.png', '2016'),
                        ],
                      )),
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

  Widget _buildCategoryView(String imgPath, String subName) {
    return Padding(
      padding: EdgeInsets.only(top: 10, left: 24, right: 10),
      child: InkWell(
        onTap: () {},
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
    );
  }
}

// import 'package:flutter/material.dart';
// import 'package:flutter_plugin_pdf_viewer/flutter_plugin_pdf_viewer.dart';

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter PDF',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: HomePage(),
//     );
//   }
// }

//   String url = "http://www.pdf995.com/samples/pdf.pdf";
//   String pdfasset = "assets/sample.pdf";
//   PDFDocument _doc;
//   bool _loading;

//   @override
//   void initState() {
//     super.initState();
//     _initPdf();
//   }

//   _initPdf() async {
//     setState(() {
//       _loading = true;
//     });
//     final doc = await PDFDocument.fromURL(url);
//     setState(() {
//       _doc=doc;
//       _loading = false;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("Flutter PDF Demo"),),
//       body: _loading ? Center(child: CircularProgressIndicator(),) : PDFViewer(document: _doc,
//       indicatorBackground: Colors.red,
//       // showIndicator: false,
//       // showPicker: false,
//        ),
//     );
//   }
// }
