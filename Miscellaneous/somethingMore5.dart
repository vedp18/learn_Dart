void main(List<String> args) {
  String stmt = "helllo, hi how are you?";
  print(stmt);    // helllo, hi how are you?

  // now suppose I want to just capitalise the very first letter of my string 
  // I can do that like...
  stmt = stmt[0].toUpperCase() + stmt.substring(1);
  print(stmt);    // Helllo, hi how are you?


  // sounds easy yeah.. but what if you have to do that with many string which is not at same place (database or list)
  // how will you do that

  // here we get help of keyword 'extension'  

  String newStmt = "this is new String Statement";
  newStmt = newStmt.capitaliseFisrtLetter();
  print(newStmt);
}



// using extension now I can add my custom functions to String int double or any classes or datatypes
// It will be available upto this library only or wherever it gets imported 

//here I'm doing it on String so I will be able to access this function from any string
extension CapitaliseFisrtLetter on String{

  String  capitaliseFisrtLetter(){
    return this[0].toUpperCase() + substring(1);
  }
}