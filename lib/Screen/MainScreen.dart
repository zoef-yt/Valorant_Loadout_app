import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:valorant_loadout/style/StylesOfAll.dart';
import 'package:valorant_loadout/character.dart';
import 'package:sizer/sizer.dart';

class MainScreen extends StatefulWidget {
  static String id = "MainScreen";

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  var char = Character();
  bool boi = true;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      //return LayoutBuilder
      builder: (context, constraints) {
        return OrientationBuilder(//return OrientationBuilder
            builder: (context, orientation) {
          //initialize SizerUtil()
          SizerUtil().init(constraints, orientation); //initialize SizerUtil
          return MaterialApp(
            home: Scaffold(
              appBar: AppBar(
                backgroundColor: Color(0xFF111111),
                title: Center(
                    child: Text(
                  "VALORANT LOADOUT",
                  style: TextStyle(
                      color: TextColor,
                      fontSize: 3.0.h,
                      fontWeight: FontWeight.w900),
                )),
              ),
              backgroundColor: bgcolor,
              body: SafeArea(
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [],
                  ),
                ),
              ),
            ),
          );
        });
      },
    );
  }

  // ignore: non_constant_identifier_names
  Center MainShowWidget() {
    return Center(
      child: Container(
        decoration: BoxDecoration(
          color: ButtonColor,
          borderRadius: BorderRadius.circular(20),
        ),
        height: 85.0.h,
        width: 85.0.w,
        child: Column(
          children: [
            Text("Reyna"),
            Positioned(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: InkWell(
                  onTap: () {
                    setState(() {
                      boi = true;
                    });
                  },
                  child: Padding(
                    padding: EdgeInsets.all(0.99.h),
                    child: Text(
                      "Done",
                      style: TextStyle(
                          color: TextColor,
                          fontSize: 5.0.h,
                          fontWeight: FontWeight.w900),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // ignore: non_constant_identifier_names
  Center GenerateButton() {
    return Center(
      child: Container(
        decoration: BoxDecoration(
          color: ButtonColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: InkWell(
          onTap: () {
            setState(() {
              boi = false;
            });
          },
          child: Padding(
            padding: EdgeInsets.all(0.99.h),
            child: Text(
              "Generate Loadout",
              style: TextStyle(
                  color: TextColor,
                  fontSize: 5.0.h,
                  fontWeight: FontWeight.w900),
            ),
          ),
        ),
      ),
    );
  }
}
