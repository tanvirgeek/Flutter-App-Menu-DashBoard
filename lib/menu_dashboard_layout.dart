import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
final Color backgroundColor = Color(0xFF4A4A58);

class MenuDashBoard extends StatefulWidget {
  @override
  _MenuDashBoardState createState() => _MenuDashBoardState();
}

class _MenuDashBoardState extends State<MenuDashBoard> {
  bool isCollapsed = true;
  double screenWidth, screenHeight;
  final Duration duration = const Duration(milliseconds: 300);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    screenHeight = size.height;
    screenWidth = size.width;

    return Scaffold(
      backgroundColor: backgroundColor,
      body: Stack(
        children: <Widget>[
          menu(context),
          dashboard(context)
        ],
      ),

    );
  }

  Widget menu(context){
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "Dashboard ",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            SizedBox(height: 10,),
            Text(
              "Messages ",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            SizedBox(height: 10,),
            Text(
              "Utility Bills ",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            SizedBox(height: 10,),
            Text(
              "Funds Transfer",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            SizedBox(height: 10,),
            Text(
              "Branches",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ],),
      ),
    );
  }

  Widget dashboard (context){
    return AnimatedPositioned(
      duration: duration,
      top: 0.2 * screenHeight,
      bottom: 0.2 * screenHeight,
      left: 0.6*screenWidth,
      right: -0.4*screenWidth,
      child: Material(
        elevation: 8,
        color: backgroundColor,
        child: Container(
          padding: const EdgeInsets.only(left: 16, right: 16, top: 48),
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                mainAxisSize:MainAxisSize.max,
                children: <Widget>[
                  InkWell(
                    child: Icon(Icons.menu, color: Colors.white),
                    onTap: (){
                      setState((){
                        isCollapsed = ! isCollapsed;
                      });// Here is the error with a red underline, The function setState is not defined.
                    },
                  ),

                  Text("My Cards", style: TextStyle(fontSize: 24,color: Colors.white),),
                  Icon(Icons.settings, color: Colors.white)
                ],),
            ],
          ),
        ),
      ),
    );
  }
}



