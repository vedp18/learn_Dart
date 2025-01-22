// ignore_for_file: unused_local_variable

void main(List<String> args) {
  
  /// Records --> immutable collection of elements
  /// Records are real values. You can store them in variables, pass them to from functions and store them in lists.
  /// 
  
  final record = (018, 'Hello', true, 9.1827);

  print(record);    // Output:  (18, Hello, true, 9.1827)

  // accessing elements using $1, or $n ( for nth element)
  print(record.$1);   // 18
  print(record.$2);   // Hello
  print(record.$3);   // true
  print(record.$4);   // 9.1827

  // can used named arguements
  final r1 = (EnrollNo: 210180107004, Name: "Vedkumar D Patel", Department: "Computer", CGPA: 8.72);
  
  // so we can access them using their name
  print("EnrollNo: ${r1.EnrollNo}");    // EnrollNo: 210180107004
  print("Name: ${r1.Name}");      // Name: Vedkumar D Patel
  print("CGPA: ${r1.CGPA}");      // CGPA: 8.72

  // Other ways to define records
  (int,String)? details = (27, "Ved");
  print(details);   // (27,Ved)

  ({bool isNew, double id}) r2 = (isNew: true, id: 27.9);
  print(r2);

  // if any two records have exact same signature then value of one can be transfer to other one or can be comparable
  ({int x, int y, int z}) point = (x: 1, y: 2, z: 3);
  print("variable point before: $point");
  
  ({int a, int y, int z}) color = (a: 10, y: 20, z: 30);

  ({int x, int y, int z}) color2 = (x: 10, y: 20, z: 30);
  
  // point=color;  // throws error
  point = color2;

  print("variable point after: $point");

}