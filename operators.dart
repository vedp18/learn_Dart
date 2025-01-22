// ignore_for_file: unnecessary_type_check, dead_code

/*
  # OPERATORS
  1. Arithmatic: 
    i) + : Addition 
    ii) - : Substraction
    iii) * : Multiplication
    iv) / : Division
    v) ~/ : Division but in results always in int type
    vi) % : Modulo (returns remainder of division (can be double)) 
    vii) (posfix,prefix) ++ : Increment by 1 
    viii)  (posfix,prefix) -- : Decrement by 1
  
  2. Equality or Relational: 
    i) == : Equal to, compares both rhs and lhs is whether equal or not
    ii) != : Not Equal to, returns true if rhs and lhs are not equal
    iii) < : return true if lhs is lesser than rhs else false
    iv) > : returns true if lhs is greater than rhs else false
    v) <= : returns true if lhs is lesser or equal to rhs else false
    vi) >= : return true if lhs is greater or equal to rhs else false

  3. Type Test:
    i) as : Typecast (eg: employee as Person) can be used only and only if obj is of that type.
    ii) is : (obj is T) returns true if obj implements the interface T else false
    iii) is! : (obj is! T) returns true if obj doesn't implements the interface T else false.

  4. Assignmment:
    i) = : assigns the value of rhs into lhs
    ii) ??= : assigns value of rhs into lhs only and only if lhs is null
    iii) += : assigns after performing given operation(+, -, *, /, ~/, %, ^, |, &, <<, >>, >>>) between lhs and rhs 
    -=, *=, /=, ~/=, %=, ^=, &=, |=, <<=, >>=, >>>=.

  5. Logical:
    i) ! : inverts the following expression final value (eg: !(true) --> false or vice versa
    ii) || : returns true only and only if any of two expressions return true else false 
    iii) && : returns true only and only if both of two expressions returns true else false

  6. Bitwise or Shift:
    i) & : bitwise AND
    ii) | : bitwise OR
    iii) ^ : bitwise ExOR
    iv) ~ : bitwise negation flips 0 to 1 or 1 to 0
    v) << : left shift or multiply int value with 2
    vi) >> : right shift or division int value with 2
    vii) >>> : triple shift or unsigned right shift

  7. Conditional:
    i) ternay operator : (<condition> ? expr1 : expr2) returns and evalute expr1 if condition is true else do the same for expr2
    ii) ?? : if-null operator, (expr1 ?? expr2) returns and evaluate expr1 if it is non null else returns and evaluat epxr2

  8. Cascade: ..?
*/




void main() {

  // 1. Arithmetic Operators
  print("##__Arithmatic Operators__##");
  int a = 10, b = 3;
  print("Addition: ${a + b}");
  print("Subtraction: ${a - b}");
  print("Multiplication: ${a * b}");
  print("Division (double): ${a / b}");
  print("Integer Division: ${a ~/ b}");
  print("Modulo: ${a % b}");
  print("Increment: ${++a}"); // Prefix
  print("Decrement: ${--b}"); // Prefix

  print("---------------------------------------------------------------------");

  // 2. Equality or Relational Operators
  print("##__Equality or Relationing Operators__##");
  print("Equal: ${a == b}");
  print("Not Equal: ${a != b}");
  print("Less than: ${a < b}");
  print("Greater than: ${a > b}");
  print("Less than or Equal: ${a <= b}");
  print("Greater than or Equal: ${a >= b}");

  print("---------------------------------------------------------------------");

  // 3. Type Test Operators
  print("##__Type Test Operators__##");
  dynamic obj = "Hello";
  print("Typecast: ${obj as String}");
  print("is String: ${obj is int}");
  print("is! int: ${obj is! String}");

  print("---------------------------------------------------------------------");

  // 4. Assignment Operators
  print("##_Assignment Operators_##");
  int? c;
  print("Null-aware assignment: ${c ??= 5}");
  print("Addition assignment: ${c +=3}");
  print("Subtraction assignment: ${ c -= 2}");
  print("Multiplication assignment: ${ c *= 2}");  
  print("Integer Division assignment: ${c ~/= 2}");

  print("---------------------------------------------------------------------");

  // 5. Logical Operators
  print("##_Logical Operators_##");
  bool x = true, y = false;
  print("NOT: ${!x}");
  print("OR: ${x || y}");
  print("AND: ${x && y}");

  print("---------------------------------------------------------------------");

  // 6. Bitwise or Shift Operators
  print("##__Bitwise or Shift Operators__##");
  int d = 2; // 10 in binary
  print("Bitwise AND: ${a & b}");
  print("Bitwise OR: ${a | b}");
  print("Bitwise XOR: ${a ^ b}");
  print("Bitwise NOT: ${~a}");
  print("Left Shift: ${d << 1}"); // 10 << 1 = 100 (4 in decimal)
  print("Right Shift: ${d >> 1}"); // 10 >> 1 = 01 (1 in decimal)

  print("---------------------------------------------------------------------");

  // 7. Conditional Operators
  print("##__Conditional Operators__##");
  int e = 5, f = 10;
  print("Ternary: ${e > f ? "e is greater" : "f is greater"}");
  String? g;
  print("If-null: ${g ?? "Default Value"}");

  print("---------------------------------------------------------------------");

  // 8. Cascade Operator
  print("##__Cascade Operator__##");
  List<int> list = []
    ..add(1)
    ..add(2)
    ..addAll([3, 4]);
  print("Cascade operator result: $list");
}



/*
# OUTPUT
##__Arithmatic Operators__##
Addition: 13
Subtraction: 7
Multiplication: 30
Division (double): 3.3333333333333335
Integer Division: 3
Modulo: 1
Increment: 11
Decrement: 2
---------------------------------------------------------------------
##__Equality or Relationing Operators__##
Equal: false
Not Equal: true
Less than: false
Greater than: true
Less than or Equal: false
Greater than or Equal: true
---------------------------------------------------------------------
##__Type Test Operators__##
Typecast: Hello
is String: false
is! int: false
---------------------------------------------------------------------
##_Assignment Operators_##
Null-aware assignment: 5
Addition assignment: 8
Subtraction assignment: 6
Multiplication assignment: 12
Integer Division assignment: 6
---------------------------------------------------------------------
##_Logical Operators_##
NOT: false
OR: true
AND: false
---------------------------------------------------------------------
##__Bitwise or Shift Operators__##
Bitwise AND: 2
Bitwise OR: 11
Bitwise XOR: 9
Bitwise NOT: -12
Left Shift: 4
Right Shift: 1
---------------------------------------------------------------------
##__Conditional Operators__##
Ternary: f is greater
If-null: Default Value
---------------------------------------------------------------------
##__Cascade Operator__##
Cascade operator result: [1, 2, 3, 4]
*/
