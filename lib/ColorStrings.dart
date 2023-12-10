// ignore: file_names
List<String> choose = [
  "assets/Riv/black_.riv",
  "assets/Riv/red.riv",
  "assets/Riv/finalstringoran (1).riv",
  "assets/Riv/finalgreen.riv",
  // "assets/Riv/finalstring.riv",
  // "assets/Riv/finalstringred.riv",
  // "assets/Riv/finalstringoran.riv",
  // "assets/Riv/finalstringgreen.riv",
];
int num = 0;
String choosedstring = 'black';
late int choosekerar;

void stringschoose(String index) {
  choosedstring = index;
  if (index == 'black') {
    num = 0;
  } else if (index == 'red') {
    num = 1;
  } else if (index == 'orange') {
    num = 2;
  } else if (index == 'green') {
    num = 3;
  } else {
    num = 4;
  }
}

String mm() { // just chossen string 
  return choose[num];
}

String assign() {  // which is assigned 
  return choosedstring;
}

String initkerar() { // the inital string
  return choose[num];
}

void kerarsave(int index) {
  choosekerar = index;
}

int showkerar() {

  return choosekerar;
}
