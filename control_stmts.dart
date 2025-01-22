// ignore_for_file: dead_code

void main(List<String> args) {
  // if 
  bool isTrue = true;
    if (isTrue) {
      print("true");
      isTrue = false;
    }

    // if else
    if (isTrue) {
      print("True");
      isTrue = false;
    }
    else {
      print("False");
      // isTrue = true;
    }

    // if else if
    bool isFalse = true;
    if (!isTrue) {
      print("True");
    }
    else if(isFalse){
      print("False");
    }
    else{
      print("default");
    }


  /// Nested is also possible in dart
  

  /// Switch case
  /// in dart we doesn't need to put break after each case, we only need to put break when there is nothing to do in that particular case
  /// from dart 3.0.0 there is another feature to check another conditions with matched case
  String operator = '+';
  switch (operator) {
    case '-':
      print("Substraction");
    case '+' when isTrue:   // So here it checks isTrue == true or not if not then flow doesn't enter this case
      print("Add");
    case '/':
      break;
    default:
      print("Default");
  }
  
/*
* OUTPUT:
true
False
True
Default
*/
    
}