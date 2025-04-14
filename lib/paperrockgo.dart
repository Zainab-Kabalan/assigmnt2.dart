import 'dart:math';
import 'package:flutter/material.dart';
import 'package:paperrockpleasespareme/sign-button.dart';
import 'package:paperrockpleasespareme/sing-lists-maps.dart';

void main(
  List<String> args,
) {
  runApp(
    MaterialApp(
      home:
          rockpapergo(),
    ),
  );
}

class rockpapergo
    extends
        StatefulWidget {
  const rockpapergo({
    super.key,
  });

  @override
  State<
    StatefulWidget
  >
  createState() {
    return _rockpapergo();
  }
}

class _rockpapergo
    extends
        State<
          rockpapergo
        > {
  String
  playersign =
      'images/start.png';
  String
  computersign =
      'images/start.png';
  String
  playerchoice = "";
  String
  playerrest = " ";
  String result =
      " ";
  int scoreP = 0;
  int scoreC = 0;

  String
  computerchoice =
      '';
  String newsign =
      '';
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

  @override
  Widget build(
    BuildContext
    context,
  ) {
    return Scaffold(
      body: Container(
        decoration:
            BoxDecoration(
              color: Color.fromARGB(
                233,
                122,
                162,
                255,
              ),
            ),
        child: Center(
          child: Column(
            mainAxisAlignment:
                MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                height:
                    20,
              ),
              Text(
                textAlign:
                    TextAlign.center,
                "let's play Rock-Paper-Scissors",
              ),
              SizedBox(
                height:
                    20,
              ),
              Row(
                mainAxisAlignment:
                    MainAxisAlignment.center,
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
                    MainAxisAlignment.center,
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
                height:
                    5,
              ),
              Row(
                mainAxisAlignment:
                    MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height:
                        30,
                  ),
                  Row(
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
                ],
              ),
              Text(
                result,
              ),
              SizedBox(
                height:
                    5,
              ),
              Text(
                "human score: $scoreP "
                "\t"
                "uter score: $scoreC",
              ),
              SizedBox(
                height:
                    3,
              ),
              signbutton(
                ontap:
                    restP,
                image:
                    'images/rest.png',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
