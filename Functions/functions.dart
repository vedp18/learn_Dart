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

  // calling function with nullable return type
  print(func());

  print("--------------------------------------------------------------");

  // calling function with positional arguements
  func2("Rock Lee", 14, "Persiverance");    

  print("--------------------------------------------------------------");

  // caling function with named arguements
  func3(faltu: "Red Beast", age: 27, name: "Might Guy");

  print("--------------------------------------------------------------");

  // calling function with optional arguements
  func4(name: "Jiraiya");

  print("--------------------------------------------------------------");

  // here returnFunction returns an anonymous Function and after that (); execute it 
  returnFunction()();

  // here in below example is also doing same (){} --> defining function and (); executing it
  // another anonymous function
  (){
    print("another anonymous function");
  }();

  ();   // this does nothing like run empty funtion according to me ( this was my experiment and doesn't gave error with FLutter 3.27.1 )

  print("--------------------------------------------------------------");


  // calling arrow function (which are define using =>)
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


/// function with nullable return type using <datatype>? which means it can return null
String? func(){
  return null;
}

/// function with positional arguements (whenever this kind of function is called then all arguements should be passed with same position as function defination has)
void func2(String name, int age, String faltu){
  print(name);
}

/// function with named arguements    (while calling this kind of function, arguements can be misplaced)
// required keyword makes that parameter mandatory 
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