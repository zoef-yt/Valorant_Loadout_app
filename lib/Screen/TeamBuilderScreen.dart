import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:valorant_loadout/Screen/MainScreen.dart';
import 'package:valorant_loadout/style/StylesOfAll.dart';
import 'package:valorant_loadout/character.dart';
import 'package:valorant_loadout/Screen/loadOutScreen.dart';

class teamBuilderScreen extends StatefulWidget {
  @override
  _teamBuilderScreenState createState() => _teamBuilderScreenState();
}

class _teamBuilderScreenState extends State<teamBuilderScreen> {
  var char = Character();
  var player1;
  var player2;
  var player3;
  var player4;
  var player5;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    player1 = getChar(char);
    print(player1);

    player2 = getChar(char);
    print(player2);
    while (player2 == player1) {
      print("2");
      player2 = getChar(char);
    }
    player3 = getChar(char);
    print(player3);
    while (player3 == player1 || player3 == player2) {
      print("3");
      player3 = getChar(char);
    }
    player4 = getChar(char);
    print(player4);
    while (player4 == player1 || player4 == player2 || player4 == player3) {
      print("4");
      player4 = getChar(char);
    }
    player5 = getChar(char);
    print(player5);

    while (player5 == player1 ||
        player5 == player2 ||
        player5 == player3 ||
        player5 == player4) {
      print("5");
      player5 = getChar(char);
    }
    print('end');
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
                                padding: EdgeInsets.all(0.0.h),
                                children: [
                                  GettingAgent(player: player1, num: "1"),
                                  GettingAgent(player: player2, num: "2"),
                                  GettingAgent(player: player3, num: "3"),
                                  GettingAgent(player: player4, num: "4"),
                                  GettingAgent(player: player5, num: "5"),
                                ],
                              ),
                            ),
                            RaisedButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: Text('DONE'),
                            )
                          ],
                        )),
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

class GettingAgent extends StatelessWidget {
  const GettingAgent({this.player, this.num});
  final player;
  final String num;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: ButtonColor,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.5),
            spreadRadius: 1,
            blurRadius: 10, //
            offset: Offset(5, 5),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Text(
              "Player $num",
              style: TextStyle(
                  color: TextColor,
                  fontSize: 4.0.h,
                  fontWeight: FontWeight.w900),
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 1.5.h, right: 1.5.h),
                  child: CircleAvatar(
                    backgroundColor: ButtonColor,
                    radius: 4.0.h,
                    child: ClipRRect(
                      child: Image.asset('./assets/images/${player}.png'),
                    ),
                  ),
                ),
                Text(
                  "${player} ",
                  style: TextStyle(
                      color: TextColor,
                      fontSize: 4.0.h,
                      fontWeight: FontWeight.w900),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
