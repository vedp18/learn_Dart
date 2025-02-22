// Syntax: <datatype> <variable_name> = <value>;

/*
  int --> integer values -2^63 to 2^63-1  (64 bits)
  double --> decimal point values (64 bits)
  String --> for string values sequence of characters
  bool --> for boolean values (true or false)
*/ 

/*
  # Some special types or keywords
  var / final / const / dynamic
  var --> for varying variables and cannot changed once assigned 
  final --> runtime constants
  const --> compile time constants
  dynamic --> type of variable decided in runtime and can be changed after assignment
*/


void main(List<String> args) {
  

  int int_var = 10;
  print("BEFORE: $int_var");  // Output: BEFORE: 10
  int_var = 30;
  print("AFTER: $int_var");   // Output: AFTER: 30

  double double_var = 1.90099;
  print("BEFORE: $double_var");   // Output: BEFORE: 1.90099
  double_var = 9.898989;
  print("AFTER: $double_var");    // Output: AFTER: 9.898989


  String string_var = 'heelolo';
  print("BEFORE:" + string_var);   // Output: BEFORE: heelolo // String can be concanted using '+' operator // This is not commonly used 
  string_var = 'new string';
  print("AFTER:" + string_var);   // Output: AFTER: new string

  bool bool_var = true;
  print("BEFORE: $bool_var");   // Output: BEFORE: true
  bool_var = false;
  print("AFTER: $bool_var");    // Output: AFTER: false


  // Special types or keywords
  final final_var = 'string_type';
  const const_var = 'CONST';
  var var_var = 2323;
  dynamic dynamic_var = 762;

  print("BEFORE: $final_var");
  print("BEFORE: $const_var");
  print("BEFORE: $var_var");
  print("BEFORE: $dynamic_var");


  // final_var = "UHUH";    // can only be set once and also type cannot be change 
  // const_var = 'jkll';     // can't be reassigned value

  var_var = 454;      // possible to change value of that type
  // var_var = 'type_changing';    // cannot change type but can be change value of that type
  print("AFTER: $var_var");   // Output: AFTER: 454

  dynamic_var = 989;    // possible to change value
  print("AFTER: $dynamic_var");   // Output: AFTER: 989

  dynamic_var = 'type change to string';    // possible to change type also 
  print("AFTER: $dynamic_var");   // Output: AFTER: type change to string

  dynamic_var = false;
  print("AFTER: $dynamic_var");   // Output: AFTER: false


  print(int_var.isEven);    // Output: true

  // USE of $ in print or accessing variables in print or any strings
  print("int_var: $int_var");   // Output: int_var: 30
  print("int_var: ${int_var}");   // Output: int_var: 30
  print("int_var: $int_var.isEven");   // Output: int_var: 30.isEven

  // So {} is used with $ when we have to access any property of variable 
  print("int_var: ${int_var.isEven}");   // Output: int_var: true


  // null
  // <datatype> null_var = null;    // This gives an error becoz after sdk 3.0.0 
  
  // instead we will use it as
  // <datatype>? null_var = null;

  String? null_var = null;
  print(null_var);

  // So basically ? means varibale may be a null (in opposite ! means variable is not null)
  // print(null_var.length);   // (Compile time error) gives error length cant be unconditionally accessed 
  // print(null_var!.length);     // (Runtime error) as first we fooled compiler by saying null_var is not null but at runtime it throws exception

  print(null_var?.length);    // Output: null
  print(null_var?.length??"Soory its NULL");    // Output: Soory its NULL
  print(null_var?.length??0);    // Output: 0
}