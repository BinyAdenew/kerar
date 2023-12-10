// ignore: file_names
import 'package:flutter/material.dart';
import 'Banner.dart';

class Training extends StatelessWidget {
  const Training({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: DecoratedBox(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/background/1.jpg"), fit: BoxFit.fill),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Center(
                child: Padding(
                  padding: EdgeInsets.fromLTRB(0, 25, 0, 5),
                  child: DefaultTextStyle(
                    style: TextStyle(fontSize: 24, color: Colors.brown, fontFamily: 'Dire_Dawa',),
                    textAlign: TextAlign.center,
                    child: Text('Traditional Instruments in Ethiopia'),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
                child: DefaultTextStyle(
                  style: TextStyle(fontSize: 20, color: Colors.brown, fontFamily: 'Dire_Dawa',),
                  textAlign: TextAlign.start,
                  child: Text(
                      ' Traditional string instruments in Ethiopia include the krar (also known as kirar), a six-string lyre, the begena, a massive ten-string lyre, and the masenqo, a one-string bowed lute. \n The chordophones found in the south include the uncommon three-string variation of the musical bow as well as the dita, a five-string lyre.'),
                ),
              ),              
              const Padding(
                padding: EdgeInsets.fromLTRB(0, 15, 0, 15),
                child: BottomBanner(),
              ),

              const Center(
                child: Padding(
                  padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
                  child: DefaultTextStyle(
                    style: TextStyle(fontSize: 24, color: Colors.brown, fontFamily: 'Dire_Dawa',),
                    textAlign: TextAlign.center,
                    child: Text('Masenqo'),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
                child: DefaultTextStyle(
                  style: TextStyle(fontSize: 20, color: Colors.brown, fontFamily: 'Dire_Dawa',),
                  textAlign: TextAlign.left,
                  child: Text(
                      ' The masenqo is commonly found throughout Ethiopia and Eritrea and is a favorite of minstrels or "azmaris". It is single stringed spiked bowed lute with a square or diamond shaped resonator.\n 4 small wooden boards are glued together then covered with raw hide or parchment. The string is usually made from horse hair.\n Since the instrument is always used to the accompaniment of the singers voice, a tuning peg is used to fit the range of the singer/s voice.'),
                ),
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    padding: EdgeInsets.fromLTRB(0, 100, 0, 10),
                    height: 200,
                    width: 500,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                      image: AssetImage('assets/InsturmentImage/Masenko.jpg'),
                      fit: BoxFit.fitWidth,
                    )),
                  ),
                ),
              ),
                const Padding(
                padding: EdgeInsets.fromLTRB(0, 15, 0, 15),
                child: BottomBanner(),
              ),
              const Center(
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: DefaultTextStyle(
                    style: TextStyle(fontSize: 25, color: Colors.brown, fontFamily: 'Dire_Dawa',),
                    textAlign: TextAlign.center,
                    child: Text(
                        'Krar'),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
                // ignore: unnecessary_const
                child: const DefaultTextStyle(
                  style: TextStyle(fontSize: 20, color: Colors.brown, fontFamily: 'Dire_Dawa',),
                  textAlign: TextAlign.start,
                  child: Text(
                      ' The Krar, also known as the Kraar, is a 5-6 stringed lyre that is bowl in shape.It is a chordophone which is traditionally tuned to a pentatonic scale, while modern krars can be amplified like electric guitars, \n Plucking the krar will create a soft tone, while strumming it will produce a pulsed beat.Much like the masenqo, the krar is a favorite of minstrels or "azmaris" who often sing love and secular songs.'),
                ),
              ),

              Center(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    padding: const EdgeInsets.fromLTRB(0, 100, 0, 10),
                    height: 200,
                    width: 500,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                      image: AssetImage('assets/InsturmentImage/Kerar.jpg'),
                      fit: BoxFit.fitWidth,
                    )),
                  ),
                ),
              ),

              const Padding(
                padding: EdgeInsets.fromLTRB(0, 15, 0, 15),
                child: BottomBanner(),
              ),

              const Center(
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: DefaultTextStyle(
                    style: TextStyle(fontSize: 25, color: Colors.brown, fontFamily: 'Dire_Dawa',),
                    textAlign: TextAlign.center,
                    child: Text(
                        'Begena'),
                        ),
                ),
              ),

            const Padding(
                padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
                child: DefaultTextStyle(
                  style: TextStyle(fontSize: 20, color: Colors.brown, fontFamily: 'Dire_Dawa',),
                  textAlign: TextAlign.start,
                  child: Text(
                      ' By oral Ethiopian tradition, the begena was an instrument used in Ancient Israel by David to help King Saul with his sleeplessness.\n This instrument was later brought to Ethiopia by Menelik I. The begena is considered an instrument for the upper-class and used by both male and female. Commonly it is used during prayers and meditations. \n The pointing finger plucks the strings that are number 3 and 4, while the rest of the fingers control one string each. The remainder of the string are employed as finger stops, allowing the plucked strings to pulsate.'),
          ),
              ),

              Center(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    padding: EdgeInsets.fromLTRB(0, 100, 0, 10),
                    height: 200,
                    width: 500,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                      image: AssetImage('assets/InsturmentImage/Begena.jpg'),
                      fit: BoxFit.fitWidth,
                    )),
                  ),
                ),
              ),

                const Padding(
                padding: EdgeInsets.fromLTRB(0, 15, 0, 15),
                child: BottomBanner(),
              ),

              const Center(
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  // ignore: unnecessary_const
                  child: DefaultTextStyle(
                    style: TextStyle(fontSize: 25, color: Colors.brown, fontFamily: 'Dire_Dawa',),
                    textAlign: TextAlign.center,
                    child: Text(
                        'Washint'),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
                child: DefaultTextStyle(
                  style: TextStyle(fontSize: 20, color: Colors.brown, fontFamily: 'Dire_Dawa',),
                  textAlign: TextAlign.start,
                  child: Text(
                      ' This end blown flute of wooden, bamboo or cane composition known as the washint is traditionally used in Ethiopia as a way musicians would convey oral history. \n The washint usually has 4 finger holes which enables the player to compose pentatonic scaled sounds. The washint is a bamboo flute that is common in the highlands.\n Trumpet-like instruments include the ceremonial malakat used in some regions, and the holdudwa (animal horn; compare shofar) found mainly in the south.\n Embilta flutes have no finger holes, and produce only two tones, the fundamental and a fourth or fifth interval. These may be metal (generally found in the north) or bamboo (in the south). The Konso and other people in the south play fanta, or pan flutes.'),
                ),
              ),
              
               Center(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    padding: const EdgeInsets.fromLTRB(0, 100, 0, 10),
                    height: 200,
                    width: 500,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                      image: AssetImage('assets/InsturmentImage/Washent.jpg'),
                      fit: BoxFit.fitWidth,
                    )),
                  ),
                ),
              ),

            const Padding(
                padding: EdgeInsets.fromLTRB(0, 15, 0, 15),
                child: BottomBanner(),
              ),

             const Center(
               child: Padding(
                  padding: EdgeInsets.all(8.0),
                  // ignore: unnecessary_const
                  child: DefaultTextStyle(
                    style: TextStyle(fontSize: 25, color: Colors.brown, fontFamily: 'Dire_Dawa'),
                    textAlign: TextAlign.center,
                    child: Text(
                        'Pentatonic music'),
                  ),
                ),
             ),
              const Padding(
                padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
                child: DefaultTextStyle(
                  style: TextStyle(fontSize: 20, color: Colors.brown, fontFamily: 'Dire_Dawa',),
                  textAlign: TextAlign.start,
                  child: Text(
                      ' The Ambassel scale is a pentatonic scale widely used in the Gonder and Wollo regions of Ethiopia. … It can be viewed as a pentatonic subset of the natural minor scale on intervals 1, 2, ♭3, 5, ♭6. The scale is used in Ethiopian music for songs with historical themes.\n Also What are Ethiopian music scales? Ethiopian songs are based on five-note scales called kignits. Ambassel, Tezita, Anchihoye and Bati are the four main kignits and the basis of many popular songs.\n Likewise What is pentatonic scale? pentatonic scale, also called five-note scale or five-tone scale, musical scale containing five different tones. It is thought that the pentatonic scale represents an early stage of musical development, because it is found, in different forms, in most of the world’s music.'),
     ),
              ),
                  const Center(
                             child: Padding(
                                           padding: EdgeInsets.all(8.0),
                                           // ignore: unnecessary_const
                                           child: DefaultTextStyle(
                                             style: TextStyle(fontSize: 25, color: Colors.brown,fontFamily: 'Dire_Dawa',),
                                             textAlign: TextAlign.center,
                                             child: Text(
                                                 'Ethiopian Music Scales (Kignit)'),
                                           ),
                                         ),
                           ),
                           
              const Center(
                child: Padding(
                  padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
                  child: DefaultTextStyle(
                    style: TextStyle(fontSize: 20, color: Colors.brown, fontFamily: 'Dire_Dawa',),
                    textAlign: TextAlign.center,
                    child: Text(
                        ' AnhiHoye, Ambassel ,Batti , Tizita'),
                 ),
                ),
              ),

              const Padding(
                padding: EdgeInsets.fromLTRB(0, 130, 0, 0),
                child: BottomBanner(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
