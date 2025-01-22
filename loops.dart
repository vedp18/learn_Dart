void main(List<String> args) {
  /// Loops
  
  /// for loop
  /// Syntax:
  /*
  for(<initialization>; <condition>; <increment or decrement>){

    // Code to be repeated untill the codition is true
  }
  */ 
  int count = 5;
  for (var i = 0; i < count; i++) {
    print(i);
  }


  /// while loop
  /// Syntax:
  /*
  while(<condition>){
    // code to be repeated untill the condition is true
  }
  */
  count = 5;
  while (count>0) {
    print("while loop");
    count--;
  }


  /// Do while loop
  /// Syntax:
  /*
  do {
    // code to be repeated untill the condition is true
  } while(<condition>)
  */
  count = 5;
  do {
    print("do while");
    count--;
  } while (count>0);



  /// keyword 'continue' : skip this iteration and again starts for next iteration
  /// keyword 'break' : make exit from the loop  
}