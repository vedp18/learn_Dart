import 'dart:io';

void main(List<String> args) {

  print("enter your words:");
  // stdout.writeln("Hello");   // alternative for print to print something on console or terminal
  var input = stdin.readLineSync();

  print("USERINPUT: $input");
}