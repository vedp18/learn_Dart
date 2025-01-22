// import 'somethingMore5.dart';

void main(List<String> args) {
  List<String> l1 = ['Hiii', 'hello'];

  // we can directly compare it with other list or cases AND can be done with records, maps

  // usinf switch case
  bool isON = true;
  switch(l1){
    case ['Hiii' || 'hiii', 'hello'] when isON :
      print("Matched");
    default: 
      print("Not Matched");
  }


// nothing related to this file, it was for testing somethingMore5 extension function in String
  // String n = "kjhkdj";
  // n=n.capitaliseFisrtLetter();
  // print(n);

}