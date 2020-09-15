import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Animation/FadeAnimation.dart';
import 'HomePage.dart';

class Login2 extends StatefulWidget {
  @override
  _Login2State createState() => _Login2State();
}

class _Login2State extends State<Login2> {
  var name,email,password,token;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(
        //   backgroundColor: Colors.indigo,
        //   centerTitle: true,
        //   title: Text(""),
          
        // ),

        body: Container(
          decoration: BoxDecoration(        
                  image: DecorationImage( 
                  image: AssetImage('assets/images/radhabg2.jpeg'),
                  fit: BoxFit.fill,
              )
          ),
           child: Column(
             children: <Widget>[
               Container(
                 

          child: Stack(
            children: <Widget>[                      

                    Positioned(
                      // left: 120,
                      // width: 150,
                      // height: 470,
                      child: FadeAnimation(
                          1.3,
                          Container(
                            margin: EdgeInsets.only(top: 300,bottom: 30),
                            child: Center(
                              child: Text(
                                "Login",
                                style: TextStyle(
                                  fontSize: 40,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          )),
                    ),


                  ]
                  ),      
          
          ),

          Padding(
                padding: EdgeInsets.all(30.0),
                child: Column(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                                color: Color.fromRGBO(143, 148, 251, .3),
                                blurRadius: 20.0,
                                offset: Offset(0, 10)),
                          ]),
                      child: Column(
                        children: <Widget>[
                          FadeAnimation(
                              1.4,
                              Container(
                                padding: EdgeInsets.all(8.0),
                                decoration: BoxDecoration(
                                    border: Border(
                                        bottom: BorderSide(
                                            color: Colors.grey[100]))),
                                child: TextField(
                                  decoration: InputDecoration(
                                      border: InputBorder.none,
                                      hintText: "Email or Phone Number",
                                      hintStyle:
                                          TextStyle(color: Colors.grey[400])),
                                  onChanged: (val) {
                                    name = val;
                                  },
                                ),
                              )),
                          FadeAnimation(
                              1.45,
                              Container(
                                padding: EdgeInsets.all(8.0),
                                decoration: BoxDecoration(
                                    border: Border(
                                        bottom: BorderSide(
                                            color: Colors.grey[100]))),
                                child: TextField(
                                  decoration: InputDecoration(
                                      border: InputBorder.none,
                                      hintText: "Password",
                                      hintStyle:
                                          TextStyle(color: Colors.grey[400])),
                                  onChanged: (val) {
                                    password = val;
                                  },
                                ),
                              )),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    FadeAnimation(
                        1.5,
                        Container(
                            height: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              gradient: LinearGradient(colors: [
                                Color.fromRGBO(14, 150, 251, 0.6),
                                Color.fromRGBO(25, 170, 251, 0.7)
                              ]),
                            ),
                            child: Material(
                                //onPressed --done
                                // backgroudcolor: colors.transparent,--done
                                //single scroll view
                                color: Colors.transparent,
                                child: InkWell(
                                  onTap: () {
                              //authentication-error

                                    // AuthService().login(name, password).then(
                                    //   (val) {
                                    //     if (val.data['success']) {
                                    //       token = val.data['token'];
                                    //       Fluttertoast.showToast(
                                    //           msg: 'Authenticated',
                                    //           toastLength: Toast.LENGTH_SHORT,
                                    //           gravity: ToastGravity.BOTTOM,
                                    //           backgroundColor: Colors.red,
                                    //           textColor: Colors.white,
                                    //           fontSize: 16.0);
                                    //       Navigator.push(
                                    //           context,
                                    //           new MaterialPageRoute(
                                    //               builder: (context) =>
                                    //                   new HomePage()));
                                    //       //
                                    //     } else {
                                    //       Fluttertoast.showToast(
                                    //           msg: "Not Succesful",
                                    //           toastLength: Toast.LENGTH_SHORT,
                                    //           gravity: ToastGravity.BOTTOM,
                                    //           backgroundColor: Colors.red,
                                    //           textColor: Colors.white,
                                    //           fontSize: 16.0);
                                    //     }
                                    //   },
                                    // );

                                    Navigator.push(
                                        context,
                                        new MaterialPageRoute(
                                            builder: (context) =>
                                                new HomePage()));
                                    
                                    //no need

                                    // Navigator.of(context)
                                    //     .pushNamed('/homepage');
                                  },
                                  child: Center(
                                    child: Text(
                                      "Login",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                )))),
                    SizedBox(
                      height: 10,
                    ),
                    FadeAnimation(
                      1.6,
                      Text(
                        "Forgot Password ?",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 15),
                      ),
                    )
                  ],
                ),
              )
           
             ]
           
           )
        
    ))
    ;
    
  }
}
