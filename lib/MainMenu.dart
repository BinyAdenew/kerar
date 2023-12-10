// ignore: file_names
import 'package:flutter/material.dart';
import 'package:kerarriv/ChooseKerar.dart';
import 'package:kerarriv/Training.dart';
import 'package:kerarriv/listviewaudio.dart';
import 'Banner.dart';
import 'AboutUs.dart';
// ignore: depend_on_referenced_packages
import 'package:path_provider/path_provider.dart';
import 'dart:io';
import 'package:google_mobile_ads/google_mobile_ads.dart';

class MainMenu extends StatefulWidget {
  const MainMenu({super.key});

  @override
  State<MainMenu> createState() => _MainMenuState();
}

class _MainMenuState extends State<MainMenu> {
  late double widt;
  late double heigh;
  late Directory appDirectory;
  List<String> records = [];

  @override
  void initState() {
    WidgetsFlutterBinding.ensureInitialized();
    MobileAds.instance.initialize();
    super.initState();

    getApplicationDocumentsDirectory().then((value) {
      appDirectory = value;
      appDirectory.list().listen((onData) {
        if (onData.path.contains('.aac')) records.add(onData.path);
      }).onDone(() {
        records = records.reversed.toList();
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    widt = MediaQuery.of(context).size.width * 0.60; //230
    heigh = MediaQuery.of(context).size.height * 0.11; //90
    return DecoratedBox(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/home.jpg"), fit: BoxFit.fill),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
//Option 1

                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: GestureDetector(
                      child: Container(
                        width: widt,
                        height: heigh,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/background/2back.png"),
                              fit: BoxFit.fill),
                        ),
                        child: const Center(
                          child: DefaultTextStyle(
                            style: TextStyle(
                                fontFamily: 'Dire_Dawa',
                                fontSize: 30,
                                color: Colors.brown,
                                fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                            child: Text('Play'),
                          ),
                        ),
                      ),
                      onTap: () {
                        //Navigator.pop(context); //pop dialog
                        Navigator.of(context).push(
                          MaterialPageRoute(
                              builder: (context) => const ChooseKerar(
                                    i: 1,
                                  )),
                        );
                      }),
                ),

//Option 2

                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: GestureDetector(
                      child: Container(
                          width: widt,
                          height: heigh,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                                image:
                                    AssetImage("assets/background/2back.png"),
                                fit: BoxFit.fill),
                          ),
                          child: const Center(
                            child: DefaultTextStyle(
                              style: TextStyle(
                                  fontFamily: 'Dire_Dawa',
                                  fontSize: 30,
                                  color: Colors.brown,
                                  fontWeight: FontWeight.bold),
                              textAlign: TextAlign.center,
                              child: Text('View Recording'),
                            ),
                          )),
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const ListViewRecord()));
                      }),
                ),

//Option 3

                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: GestureDetector(
                      child: Container(
                          width: widt,
                          height: heigh,
                          // ignore: prefer_const_constructors
                          decoration: BoxDecoration(
                            image: const DecorationImage(
                                image:
                                    AssetImage("assets/background/2back.png"),
                                fit: BoxFit.fill),
                          ),
                          child: const Center(
                            child: DefaultTextStyle(
                              style: TextStyle(
                                  fontFamily: 'Dire_Dawa',
                                  fontSize: 30,
                                  color: Colors.brown,
                                  fontWeight: FontWeight.bold),
                              textAlign: TextAlign.center,
                              child: Text('Training'),
                            ),
                          )),
                      onTap: () {
                        // Navigator.pop(context); //pop dialog
                        Navigator.of(context).push(
                          MaterialPageRoute(
                              builder: (context) => const Training()),
                        );
                      }),
                ),

// Option 4

                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: GestureDetector(
                      child: Container(
                          width: widt,
                          height: heigh,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                                image:
                                    AssetImage("assets/background/2back.png"),
                                fit: BoxFit.fill),
                          ),
                          child: const Center(
                            child: DefaultTextStyle(
                              style: TextStyle(
                                  fontFamily: 'Dire_Dawa',
                                  fontSize: 30,
                                  color: Colors.brown,
                                  fontWeight: FontWeight.bold),
                              textAlign: TextAlign.center,
                              child: Text('About us'),
                            ),
                          )),
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                              builder: (context) => const AboutUs()),
                        );
                      }),
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(0, 130, 0, 0),
              child: BottomBanner(),
            ),
          ],
        ));
  }
}
