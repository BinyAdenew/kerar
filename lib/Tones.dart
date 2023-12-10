import 'package:just_audio/just_audio.dart';

final AudioPlayer _player1 = AudioPlayer();
final AudioPlayer _player2 = AudioPlayer();
final AudioPlayer _player3 = AudioPlayer();
final AudioPlayer _player4 = AudioPlayer();
final AudioPlayer _player5 = AudioPlayer();
final AudioPlayer _player6 = AudioPlayer();

List<String> num1 = [
  "assets/Anchi hoye/1.mp3",
  "assets/Ambassel/1.mp3",
  "assets/Bati/1.mp3",
  "assets/Bati minor/1.mp3",
  "assets/Tizta/1.mp3",
  "assets/Tizita minor/1.mp3",
];
List<String> num2 = [
  "assets/Anchi hoye/2.mp3",
  "assets/Ambassel/2.mp3",
  "assets/Bati/2.mp3",
  "assets/Bati minor/2.mp3",
  "assets/Tizta/2.mp3",
  "assets/Tizita minor/2.mp3",
];
List<String> num3 = [
  "assets/Anchi hoye/3.mp3",
  "assets/Ambassel/3.mp3",
  "assets/Bati/3.mp3",
  "assets/Bati minor/3.mp3",
  "assets/Tizta/3.mp3",
  "assets/Tizita minor/3.mp3",
];
List<String> num4 = [
  "assets/Anchi hoye/4.mp3",
  "assets/Ambassel/4.mp3",
  "assets/Bati/4.mp3",
  "assets/Bati minor/4.mp3",
  "assets/Tizta/4.mp3",
  "assets/Tizita minor/4.mp3",
];
List<String> num5 = [
  "assets/Anchi hoye/5.mp3",
  "assets/Ambassel/5.mp3",
  "assets/Bati/5.mp3",
  "assets/Bati minor/5.mp3",
  "assets/Tizta/5.mp3",
  "assets/Tizita minor/5.mp3",
];
List<String> num6 = [
  "assets/Anchi hoye/6.mp3",
  "assets/Ambassel/6.mp3",
  "assets/Bati/6.mp3",
  "assets/Bati minor/6.mp3",
  "assets/Tizta/6.mp3",
  "assets/Tizita minor/6.mp3",
];

int num = 0;

// ignore: non_constant_identifier_names
void Tones(String text) {
  if (text == "ANCHI HOYE") {
    num = 0;
  } else if (text == "AMBASSEL") {
    num = 1;
  } else if (text == "BATI") {
    num = 2;
  } else if (text == "BATI MINOR") {
    num = 3;
  }else if (text == "TIZITA") {
    num = 4;
  } else if (text == "TIZITA MINOR") {
    num = 5;
  }else {
    num = 6;
  }
}

// ignore: non_constant_identifier_names
void String1() {
  _player1.setAsset(num1[num]);
  _player1.play();
}

// ignore: non_constant_identifier_names
void String2() {
  _player2.setAsset(num2[num]);
  _player2.play();
}

// ignore: non_constant_identifier_names
void String3() {
  _player3.setAsset(num3[num]);
  _player3.play();
}

// ignore: non_constant_identifier_names
void String4() {
  _player4.setAsset(num4[num]);
  _player4.play();
}

// ignore: non_constant_identifier_names
void String5() {
  _player5.setAsset(num5[num]);
  _player5.play();
}

// ignore: non_constant_identifier_names
void String6() {
  _player6.setAsset(num6[num]);
  _player6.play();
}

void setvolum(double value) {
  _player1.setVolume(value);
  _player2.setVolume(value);
  _player3.setVolume(value);
  _player4.setVolume(value);
  _player5.setVolume(value);
  _player6.setVolume(value);
}
