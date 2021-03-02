import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:valorant_loadout/Screen/TeamBuilderScreen.dart';
import 'package:valorant_loadout/Screen/loadOutScreen.dart';
import 'package:valorant_loadout/style/StylesOfAll.dart';
import 'package:valorant_loadout/character.dart';
import 'package:sizer/sizer.dart';
import 'package:animations/animations.dart';

class MainScreen extends StatelessWidget {
  LoadOutScreen screen = LoadOutScreen();
  static String id = "MainScreen";
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
                  ),
                ),
              ),
              backgroundColor: bgcolor,
              body: SingleChildScrollView(
                child: SafeArea(
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(height: 40.0.h),
                        Center(
                          child: Column(
                            children: [
                              OpenContainer(
                                closedBuilder: (context, _) {
                                  return Button(text: "Generate Loadout");
                                },
                                closedColor: ButtonColor,
                                closedElevation: 5,
                                openBuilder: (context, open) {
                                  return LoadOutScreen();
                                },
                                transitionDuration: Duration(milliseconds: 900),
                              ),
                              SizedBox(height: 2.5.h),
                              OpenContainer(
                                closedBuilder: (context, _) {
                                  return Button(text: "TEAM BUILDER");
                                },
                                closedColor: ButtonColor,
                                closedElevation: 5,
                                openBuilder: (context, open) {
                                  return teamBuilderScreen();
                                },
                                transitionDuration: Duration(milliseconds: 800),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          );
        });
      },
    );
  }
}

class Button extends StatelessWidget {
  Button({this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: ButtonColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: InkWell(
        // onTap: () {},
        child: Padding(
          padding: EdgeInsets.all(0.99.h),
          child: Text(
            text,
            style: TextStyle(
                color: TextColor, fontSize: 5.0.h, fontWeight: FontWeight.w900),
          ),
        ),
      ),
    );
  }
}
