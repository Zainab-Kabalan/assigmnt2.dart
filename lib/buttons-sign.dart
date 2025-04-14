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
          'images/start.png';
      playersign =
          'images/start.png';
      result = ' ';
      scoreC = 0;
      scoreP = 0;
    });
  }

  int scoreP = 0;
  int scoreC = 0;

  String
  playersign =
      'images/start.png';
  String
  computersign =
      'images/start.png';
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
            " computer wins person loses";
        scoreC++;
      } else if (signchoice[playerchoice] ==
          computerchoice) {
        result =
            "person wins computer loses";
        scoreP++;
      } else {
        result =
            "person wins computer loses";
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
            Image.asset(
              playersign,
              width:
                  30,
              height:
                  20,
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
              "puter: ",
              style: TextStyle(
                fontSize:
                    16,
              ),
            ),
            SizedBox(
              width:
                  6,
            ),
            Image.asset(
              computersign,
              width:
                  30,
              height:
                  20,
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
          mainAxisAlignment:
              MainAxisAlignment
                  .spaceEvenly,

          children: [
            signbutton(
              ontap: () {
                changesignP(
                  'images/rock.png',
                );
              },
              image:
                  'images/rock.png',
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

        Text(
          result,
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          "human score: $scoreP "
          "\t"
          "uter score: $scoreC",
        ),
        SizedBox(
          height: 5,
        ),
        signbutton(
          ontap:
              restP,
          image:
              'images/rest.png',
        ),
      ],
    );
  }
}
