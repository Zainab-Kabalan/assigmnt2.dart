import 'package:flutter/material.dart';
import 'package:paperrockpleasespareme/buttons-sign.dart';

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
                    10,
              ),
              Row(
                mainAxisAlignment:
                    MainAxisAlignment.spaceEvenly,

                children: [
                  buttonsigns(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
