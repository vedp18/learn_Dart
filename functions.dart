/*
<return datatype> <functionName>(<parameter1>, <parameter2>,...<parameterN>){
  // code inside functions
}
*/


void main(List<String> args) {
  print("--------------------------------------------------------------");
  
  greetings("LORD HOKAGE");
  
  print("--------------------------------------------------------------");
  
  var captain = teamCaptain();   // calling teamCaptain() function
  print("Team Captain: $captain");     

  print("--------------------------------------------------------------");

  var team = teamDetails();
  print("Team of Kakashi Hatake: $team");

  /// This is one way to access elements from multiple return values
  // print("Team Number: ${team.$1}");
  // print("Member - 1: ${team.$2}");
  // print("Member - 2: ${team.$3}");
  // print("Member - 3: ${team.$4}");

  /// This is another to access multiple return values
  var (number, mem1, mem2, mem3) = teamDetails();
  print("Team Number: $number");
  print("Member - 1: $mem1");
  print("Member - 2: $mem2");
  print("Member - 3: $mem3");

  print("--------------------------------------------------------------");

  print(func());

  print("--------------------------------------------------------------");

  func2("Rock Lee", 14, "Persiverance");

  print("--------------------------------------------------------------");

  func3(faltu: "Red Beast", age: 27, name: "Might Guy");

  print("--------------------------------------------------------------");

  func4(name: "Jiraiya");

  print("--------------------------------------------------------------");

  returnFunction()();
  // another anonymous function
  (){
    print("another anonymous function");
  }();
  ();

  print("--------------------------------------------------------------");

  print(func5());
  func6();

  print("--------------------------------------------------------------");



}

/// This is simple function with 0 parameter and String return type
String teamCaptain(){
  return "Kakashi Hatake";
}

/// function with 1 String parameter name and void as a return type
void greetings(String name){
  print("Hello, $name");
}

/// function with more than one return type
(int i, String j, String k, String l) teamDetails(){
  return (07, "Naruto Uzumaki", "Sakura Haruni", "Sasuke Uchiha");
}


/*
* OUTPUT:
--------------------------------------------------------------
Hello, LORD HOKAGE
--------------------------------------------------------------
Team Captain: Kakashi Hatake
--------------------------------------------------------------
Team of Kakashi Hatake: (7, Naruto Uzumaki, Sakura Haruni, Sasuke Uchiha)
Team Number: 7
Member - 1: Naruto Uzumaki
Member - 2: Sakura Haruni
Member - 3: Sasuke Uchiha
--------------------------------------------------------------
*/


/// function with nullable return type using <datatype>? which means it can be nullable
String? func(){
  return null;
}

/// function with positional arguements 
void func2(String name, int age, String faltu){
  print(name);
}

/// function with named arguements
void func3({required String name, required int age,  required String faltu}){
  print(name);
}
// we can use ? instead of required keyword if we want to keep some arguements optional 
void func4({required String name, int? age, String? faltu}){
  print(name);
  print(age);
  print(faltu);
}


/// anynomous function
Function returnFunction(){
  return (){
    print("Anonymous Function");
  };
}

/// arrow funtion
String func5() => "MADARA UCHIHA";
// OR 
void func6() => print("Hello world");