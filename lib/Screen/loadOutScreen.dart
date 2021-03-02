import 'dart:math';

import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:valorant_loadout/style/StylesOfAll.dart';
import 'package:valorant_loadout/character.dart';

class LoadOutScreen extends StatefulWidget {
  static String id = "LoadOutScreen";

  @override
  _LoadOutScreenState createState() => _LoadOutScreenState();
}

class _LoadOutScreenState extends State<LoadOutScreen> {
  var char = Character();
  Color colorName;
  String agent;
  @override
  void initState() {
    getWeapon(char);
    agent = getChar(char);
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return OrientationBuilder(
          builder: (context, orientation) {
            SizerUtil().init(constraints, orientation);
            return MaterialApp(
              home: Scaffold(
                backgroundColor: bgcolor,
                body: Center(
                  child: SingleChildScrollView(
                    child: Container(
                      decoration: BoxDecoration(
                        color: ButtonColor,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 10, //
                            offset: Offset(5, 5),
                          ),
                        ],
                      ),
                      height: 85.0.h,
                      width: 85.0.w,
                      child: Column(
                        children: [
                          Expanded(
                            child: ListView(
                              children: [
                                Center(
                                  child: Text(
                                    "${agent = getChar(char)} ",
                                    // "${agent} ",
                                    style: TextStyle(
                                        color: TextColor,
                                        fontSize: 5.0.h,
                                        fontWeight: FontWeight.w900),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.all(2.0.h),
                                  child: Image.asset(
                                    './assets/images/${agent}.png',
                                    height: 40.0.h,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.all(2.0.h),
                                  child: Center(
                                    child: Text(
                                      "You are only allowed 2 weapons",
                                      style: TextStyle(
                                          color: TextColor,
                                          fontSize: 2.0.h,
                                          fontWeight: FontWeight.w900),
                                    ),
                                  ),
                                ),
                                Center(
                                  child: Text(
                                    // "${char.name[Random().nextInt(char.name.length)].toUpperCase()} ",
                                    "${getWeapon(char).toUpperCase()}",
                                    style: TextStyle(
                                        color: TextColor,
                                        fontSize: 5.0.h,
                                        fontWeight: FontWeight.w900),
                                  ),
                                ),
                                // Padding(
                                //   padding: EdgeInsets.all(2.0.h),
                                //   child: Image.asset('./assets/images/1.jpg'),
                                // ),
                                Center(
                                  child: Text(
                                    "${getWeapon(char).toUpperCase()} ",
                                    style: TextStyle(
                                        color: TextColor,
                                        fontSize: 5.0.h,
                                        fontWeight: FontWeight.w900),
                                  ),
                                ),
                                // Padding(
                                //   padding: EdgeInsets.all(2.0.h),
                                //   child: Image.asset('./assets/images/1.jpg'),
                                // ),
                              ],
                            ),
                          ),
                          RaisedButton(
                            onPressed: () {
                              Navigator.pop(context);
                              // setState(() {});
                            },
                            child: Text('DONE'),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            );
          },
        );
      },
    );
  }
}

String getWeapon(char) {
  var num = Random().nextInt(char.weaponType.length);
  var weapon;
  weapon = char.weapon[char.weaponType[num]];
  return weapon[Random().nextInt(weapon.length)];
}

String getChar(char) {
  String cha;
  cha = char.name[Random().nextInt(char.name.length)];
  return cha;
}
