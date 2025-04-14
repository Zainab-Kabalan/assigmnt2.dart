import 'dart:math';
import 'package:flutter/material.dart';
import 'package:paperrockpleasespareme/sign-button.dart';
import 'package:paperrockpleasespareme/sing-lists-maps.dart';

class buttonsigns
    extends
        StatefulWidget {
  const buttonsigns({
    super.key,
  });
  @override
  State<
    StatefulWidget
  >
  createState() {
    return _buttonsigns();
  }
}

class _buttonsigns
    extends
        State<
          buttonsigns
        > {
  String
  playerrest = " ";

  void restP() {
    setState(() {
      computersign =
          '❓';
      playersign =
          '❓';
      result = ' ';
      scoreC = 0;
      scoreP = 0;
    });
  }

  int scoreP = 0;
  int scoreC = 0;

  String
  playersign = '❓';
  String
  computersign =
      "❓";
  String
  playerchoice = "";

  String
  computerchoice =
      '';
  String newsign =
      '';
  String result =
      " ";

  void changesignP(
    newsign,
  ) {
    setState(() {
      playersign =
          newsign;
      int
      rand = Random()
          .nextInt(
            3,
          );
      playerchoice =
          (playersign
              .split(
                '/',
              )
              .last
              .replaceAll(
                '.png',
                '',
              ));
      computersign =
          'images/${sign[rand]}.png';

      computerchoice =
          (computersign
              .split(
                '/',
              )
              .last
              .replaceAll(
                '.png',
                '',
              ));
      if (signchoice[computerchoice] ==
          playerchoice) {
        result =
            " you lose!😭";
        scoreC++;
      } else if (signchoice[playerchoice] ==
          computerchoice) {
        result =
            "you win!🤭";
        scoreP++;
      } else {
        result =
            "tie😬";
      }
    });
  }

  @override
  Widget build(
    BuildContext
    context,
  ) {
    return Column(
      mainAxisAlignment:
          MainAxisAlignment
              .spaceEvenly,
      children: [
        Row(
          mainAxisAlignment:
              MainAxisAlignment
                  .spaceEvenly,
          children: [
            Text(
              "you: ",
              style: TextStyle(
                fontSize:
                    16,
              ),
            ),
            SizedBox(
              width:
                  6,
            ),
            Text(
              playersign,
            ),
            SizedBox(
              width:
                  6,
            ),
          ],
        ),
        Row(
          mainAxisAlignment:
              MainAxisAlignment
                  .spaceEvenly,
          children: [
            SizedBox(
              height:
                  10,
            ),
            Text(
              "computer: ",
              style: TextStyle(
                fontSize:
                    16,
              ),
            ),
            SizedBox(
              width:
                  6,
            ),
            Text(
              computersign,
            ),

            SizedBox(
              width:
                  6,
            ),
          ],
        ),
        SizedBox(
          height: 5,
        ),
        Row(
          children: [
            SizedBox(
              height:
                  5,
            ),
            signbutton(
              ontap: () {
                changesignP(
                  'images/rock.png',
                );
              },
              image:
                  'images/rock.png',
            ),
            SizedBox(
              width:
                  10,
            ),
            signbutton(
              ontap: () {
                changesignP(
                  'images/paper.png',
                );
              },
              image:
                  'images/paper.png',
            ),
            SizedBox(
              width:
                  10,
            ),
            signbutton(
              ontap: () {
                changesignP(
                  'images/scissors.png',
                );
              },
              image:
                  'images/scissors.png',
            ),
          ],
        ),
        SizedBox(
          height:
              10,
        ),
        Text(
          result,
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          "your score: $scoreP "
          "\t"
          "comuter score: $scoreC",
        ),
        SizedBox(
          height: 5,
        ),
        IconButton(
          onPressed:
              restP,
          style: IconButton.styleFrom(
            foregroundColor: Color.fromARGB(
              255,
              68,
              134,
              189,
            ),
          ),
          icon: Icon(
            Icons
                .restart_alt,
          ),
        ),
      ],
    );
  }
}
