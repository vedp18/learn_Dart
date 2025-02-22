// ignore_for_file: equal_elements_in_set

void main(List<String> args) {
  
  //// List -> An ordered collection 
  // direct declaration and of dynamic type
  List l1 = [12,3,"asd",'ad'];
  print(l1);      // [12, 3, asd, ad]
  print(l1.runtimeType);    // List<dynamic>


  /// when we want list of partiular datatype
  // Syntax --> List<datatype> = [element1, element2,...., elementN]

  // eg: 
  List<int> l2 = [1,2,3,4];
  print(l2.runtimeType);    // List<int>

  /// List can be defined in many ways like...
  List<String> l3 = 
  [
    "hello",
    "Hiii",
    "I'm Dart"
  ];

  print(l3);    // [hello, Hiii, I'm Dart]

  // using var keyword
  var l4 = [1,2,3,"hi"];
  print(l4.runtimeType);    // List<Object>

  /// we can access all elements uisng (square-brackets) []
  print(l4[0]);   // 1
  print(l4[1]);   // 2
  print(l4[2]);   // 3
  print(l4[3]);   // hi

  // we can change elements or rewrite it but we can't add new elements 
  // l4[5] = "asd";     // RangeError Not in range  

  l4[1] = "changed";
  print(l4[1]);   // changed


  /// There are several methods for List which we use to add, delete, access, or manipulate elements from List 
  
  
  // variables
  /*
  .length -> Length of list or number of elements in list
  .reversed -> Used to reverse the list, returns the reverse version of Iterable
  .isEmpty -> returns the boolean value telling list is empty or not
  .isNotEmpty ->   returns the boolean value telling list is not-empty or empty
  */


  //methods
  /*
  .add(value) ->  method adds the value into the list from end ( element is added after last index)
  .addAll(iterable) ->  similar to add() method but adds the another iterable or lists
  .insert(index, element) ->   add element at specific index 
  .insertAll(index, iterable) -> adds another iterable or list at specific index
  */





  //// Set -> An unordered collection of unique elements
  
  // Syntax: Set<datatype> varName = { element1, ...., elementN};

      // OR

  // var varName = {};

      // OR

  // Set varName = {..};
  
  Set s1 = {1,1,2,2,2,"hello", 'hello'};

  print(s1);    // {1, 2, hello}

  Set<int> s2 = {1,2,3};
  print(s2);    // {1, 2, 3}
  print(s2.runtimeType);    // _Set<int>

  Set<String> s3 = {"hello", "hii"};
  print(s3);    // {hello, hii}
  print(s2.runtimeType);    // _Set<int>



  // To create empty set
  var s4 = Set();
  print(s4);    // {}
  print(s4.runtimeType);  // _SetDynamic




  //// Map -> stores data in form of key-value pairs
  
  // Syntax: Map<datatype,datatype> varName = Map<datatype, datatype>();

  // var varName = Map<datatype, datatype>();

  // Map m1 = Map<int,int>();

  Map m1 = {};    // it is empty map not empty set
  print(m1);    // {}
  print(m1.runtimeType);    // _Map<dynamic, dynamic>
  
  // var m2 = Map<int, String>();

  var m2 = {1:"JHK", 2:"OIUO", 3:"oioi"};
  print(m2);    // {1: JHK, 2: OIUO, 3: oioi}
  print(m2.runtimeType);    // _Map<int, String>

  // Accessing elements from map
  print(m2[1]);   // JHK


  // adding new elements
  m2[4] = "wer";
  print(m2);    // {1: JHK, 2: OIUO, 3: oioi, 4: wer}
  
  print(m2.entries);    // (MapEntry(1: JHK), MapEntry(2: OIUO), MapEntry(3: oioi), MapEntry(4: wer))

  // various methods
  /*
    .entries -> print all entries
    .length -> number of pairs
    .isempty -> bool value true if empty
    .addEntries() -> to add new entries

  */
}