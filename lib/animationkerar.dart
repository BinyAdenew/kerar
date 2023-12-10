import 'package:flutter/material.dart';
import 'Banner.dart';
import 'package:rive/rive.dart';
import 'ColorStrings.dart';
import 'Tones.dart';
import 'ChooseKerar.dart';
import 'TopMenu.dart';
import 'dart:math';

// ignore: camel_case_types
class animationKerar extends StatefulWidget {
  final int index;
  final int i;
  const animationKerar({Key? key, required this.index, required this.i})
      : super(key: key);

  @override
  State<animationKerar> createState() => _animationKerarState();
}

// ignore: camel_case_types
class _animationKerarState extends State<animationKerar> {
  late RiveAnimationController _stringOneController;
  late RiveAnimationController _stringTwoController;
  late RiveAnimationController _stringThreeController;
  late RiveAnimationController _stringFourController;
  late RiveAnimationController _stringFiveController;
  late RiveAnimationController _stringSixController;
  String text = '';
  double widt = 16;
  double heigh = 425;
  String kerar = " ";

  int num = 0;
  late String kerarstring;

  @override
  void initState() {
    kerarstring = initkerar();
    if (widget.index == 0) {
      kerar = "assets/kerarpics/1.png";
    } else if (widget.index == 1) {
      kerar = "assets/kerarpics/2.png";
    } else if (widget.index == 2) {
      kerar = "assets/kerarpics/3.png";
    } else if (widget.index == 3) {
      kerar = "assets/kerarpics/4.png";
    }
    super.initState;
    _stringOneController = OneShotAnimation(
      'playing',
      autoplay: false,
    );
    _stringTwoController = OneShotAnimation(
      'playing',
      autoplay: false,
    );
    _stringThreeController = OneShotAnimation(
      'playing',
      autoplay: false,
    );
    _stringFourController = OneShotAnimation(
      'playing',
      autoplay: false,
    );
    _stringFiveController = OneShotAnimation(
      'playing',
      autoplay: false,
    );
    _stringSixController = OneShotAnimation(
      'playing',
      autoplay: false,
    );
  }

  @override
  void dispose() {
    super.dispose();
  }

  void trigger(int i){
    if(i==0  && stringStates[i]){
      setState(() {
         _playTrackChangeAnimation(_stringOneController);
                   try {
                      String1();
                    } catch (e) {
                        setState(() {
                         text = e.toString();
                     });
           }
      });

    }
    else if (i==1  && stringStates[i]){
      setState(() {
          _playTrackChangeAnimation(_stringTwoController);
                  try {
                    String2();
                  } catch (e) {
                  setState(() {
                      text = e.toString();
                  });
           }
      });

    }
    else if (i==2  && stringStates[i]){
        setState(() {
          _playTrackChangeAnimation(_stringThreeController);
               try {
                  String3();
                } catch (e) {
                setState(() {
                    text = e.toString();
                 });
             }
        });
    }
    else if (i==3  && stringStates[i]){
      setState(() {
            _playTrackChangeAnimation(_stringFourController);
                try {
                  String4();
                } catch (e) {
                     setState(() {
                  text = e.toString();
                });
            }
      });
    }
    else if (i==4  && stringStates[i]){
      setState(() {
               _playTrackChangeAnimation(_stringFiveController);
                try {
                  String5();
                } catch (e) {
                     setState(() {
                  text = e.toString();
                });
            }
      });
   
    }
    else if (i==5  && stringStates[i]){
      setState(() {
                  _playTrackChangeAnimation(_stringSixController);
                try {
                  String6();
                } catch (e) {
                     setState(() {
                  text = e.toString();
                });
            }
      });

    }
  }

  void _playTrackChangeAnimation(RiveAnimationController controller) {
    if (controller.isActive == false) {
      controller.isActive = true;
    }
  }

   List<bool> stringStates = [false, false, false, false, false, false]; 
  @override
  Widget build(BuildContext context) {
    widt - MediaQuery.of(context).size.width * 0.5;
    heigh = MediaQuery.of(context).size.height * 0.60; //425

    
    return WillPopScope(
      /// todo: close search widget
      //Navigator.pop(context);
      onWillPop: () async {
        if (widget.i == 0) {
          Navigator.of(context).pop();
          Navigator.of(context).push(
            MaterialPageRoute(
                builder: (context) => const ChooseKerar(
                      i: 0,
                    )),
          );
        }
        return true;
      },
      
      child: Scaffold(
        body: DecoratedBox(
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/background/1.jpg"),
                fit: BoxFit.cover),
          ),
          child: Column(
            children: [
              const Padding(
                padding:  EdgeInsets.fromLTRB(5, 25, 5, 0),
                child:  TopMenu(),
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.80, // 680
                    width: MediaQuery.of(context).size.width * 0.98, // 700
                    decoration: BoxDecoration(
                        image: DecorationImage(
                      image: AssetImage(kerar),
                      fit: BoxFit.cover,
                    )),
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(0, 0, 0, 55),
                        child: GestureDetector(
                          onPanUpdate: (details) {
                            setState(() {
                              double screenWidth = MediaQuery.of(context).size.width;
                               double screenHeight = MediaQuery.of(context).size.height;

                              for (int i = 0; i < stringStates.length; i++) {
                                double stringPosition = (screenWidth / (stringStates.length + 1)) * (i + 1);
                                if (details.globalPosition.dx >= stringPosition - screenWidth / 10 &&
                                    details.globalPosition.dx <= stringPosition + screenWidth / 10) {
                                  // Trigger the string if figure is within a certain range of the string position
                                  stringStates[i] = true;
                                  trigger(i);
                                } else {
                                  // Reset other strings if figure is not within range
                                  stringStates[i] = false;
                                }
                                }
                            });
                          },
                          child: SizedBox(
                            width: 600,
                            height: heigh,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                              

                  //String 1

                               Transform.rotate(
                                    angle: -4 * pi / 180,
                                child: GestureDetector(
                                onTapDown: (_) async {
                                  _playTrackChangeAnimation(
                                      _stringOneController);
                                  try {
                                    String1();
                                  } catch (e) {
                                    setState(() {
                                      text = e.toString();
                                    });
                                  }
                                },
                                  
                                child: SizedBox(
                                  width: widt,
                                  height: heigh,
                                  // decoration: BoxDecoration(
                                  //   border: Border.all(
                                  //    color:  stringStates[0]
                                  //    ? Colors.yellow
                                  //    : Colors.transparent,
                                  //   )
                                  // ),
                                  child: RiveAnimation.asset(
                                    kerarstring,
                                    controllers: [
                                      _stringOneController,
                                    ],
                                  ),
                                ),
                                                           ),
                                ),

            // String 2

                                Transform.rotate(
                                  angle: -2 * pi / 180,
                                  child: GestureDetector(
                                    onTapDown: (_) async {
                                      _playTrackChangeAnimation(
                                          _stringTwoController);
                                      try {
                                        String2();
                                      } catch (e) {
                                        setState(() {
                                          text = e.toString();
                                        });
                                      }
                                    },
                                    child: Container(
                                      width: widt,
                                      height: heigh,
                                // decoration: BoxDecoration(
                                //     border: Border.all(
                                //      color:  stringStates[1]
                                //      ? Colors.yellow
                                //      : Colors.transparent,
                                //     )
                                //   ),
                                      child: RiveAnimation.asset(
                                        kerarstring,
                                        controllers: [
                                          _stringTwoController,
                                        ],
                                      ),
                                    ),
                                  ),
                                ),

              // String 3

                                Transform.rotate(
                                  angle: -1 * pi / 180,
                                  child: GestureDetector(
                                    onTapDown: (_) async {
                                      _playTrackChangeAnimation(
                                          _stringThreeController);
                                      try {
                                        String3();
                                      } catch (e) {
                                        setState(() {
                                          text = e.toString();
                                        });
                                      }
                  
                                    },
                                    child: Container(
                                      width: widt,
                                      height: heigh,
                                  //   decoration: BoxDecoration(
                                  //   border: Border.all(
                                  //    color:  stringStates[2]
                                  //    ? Colors.yellow
                                  //    : Colors.transparent,
                                  //   )
                                  // ),
                                      child: RiveAnimation.asset(
                                        kerarstring,
                                        controllers: [
                                          _stringThreeController,
                                        ],
                                      ),
                                    ),
                                  ),
                                ),

            //String 4

                                Transform.rotate(
                                  angle: 1 * pi / 180,
                                  child: GestureDetector(
                                    onTapDown: (_) async {
                                      _playTrackChangeAnimation(
                                          _stringFourController);
                                      try {
                                        String4();
                                      } catch (e) {
                                        setState(() {
                                          text = e.toString();
                                        });
                                      }
                       
                                    },
                                    child: Container(
                                      width: widt,
                                      height: heigh,
                                  //   decoration: BoxDecoration(
                                  //   border: Border.all(
                                  //    color:  stringStates[3]
                                  //    ? Colors.yellow
                                  //    : Colors.transparent,
                                  //   )
                                  // ),
                                      child: RiveAnimation.asset(
                                        kerarstring,
                                        controllers: [
                                          _stringFourController,
                                        ],
                                      ),
                                    ),
                                  ),
                                ),

          // String 5

                                Padding(
                                  padding: const EdgeInsets.fromLTRB(5, 0, 5, 0),
                                  child: Transform.rotate(
                                    angle: 2 * pi / 180,
                                    child: GestureDetector(
                                      onTapDown: (_) async {
                                        _playTrackChangeAnimation(
                                            _stringFiveController);
                                        try {
                                          String5();
                                        } catch (e) {
                                          setState(() {
                                            text = e.toString();
                                          });
                                        }
                                      },
                                      child: Container(
                                        width: widt,
                                        height: heigh,
                                  // decoration: BoxDecoration(
                                  //   border: Border.all(
                                  //    color:  stringStates[4]
                                  //    ? Colors.yellow
                                  //    : Colors.transparent,
                                  //   )
                                  // ),
                                        child: RiveAnimation.asset(
                                          kerarstring,
                                          controllers: [
                                            _stringFiveController,
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),

            // String 6

                                Transform.rotate(
                                  angle: 4 * pi / 180,
                                  child: GestureDetector(
                                    onTapDown: (_) async {
                                      _playTrackChangeAnimation(
                                          _stringSixController);
                                      try {
                                        String6();
                                      } catch (e) {
                                        setState(() {
                                          text = e.toString();
                                        });
                                      }
                                    },
                                    child: Container(
                                      width: widt,
                                      height: heigh,
                                  // decoration: BoxDecoration(
                                  //   border: Border.all(
                                  //    color:  stringStates[5]
                                  //    ? Colors.yellow
                                  //    : Colors.transparent,
                                  //   )
                                  // ),
                                      child: RiveAnimation.asset(
                                        kerarstring,
                                        controllers: [
                                          _stringSixController,
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              const BottomBanner(),
            ],
          ),
        ),
      ),
    );
  }
}
