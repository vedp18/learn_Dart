
// when we marked main function as async we need to make return type Future<void> instead of void
// but void will also run it means void or Future<void> it will work in both cases
// But void and Future<void> are different
void main(List<String> args) async {

  print("Count 5 Seconds");

  print(await giveResultAfter5Sec());

  print("1");
  print("2");
  print("3");
}
/*
Output:
Count 5 Seconds
returned After 5 Second
1
2
3

*/



// without marking main function await using .then 
/*
void main(List<String> args) {
  print("Count 5 Seconds");

  print(giveResultAfter5Sec().then((val) {
    print(val);
  }));

  print("1");
  print("2");
  print("3");
}
*/
/*
Output:
Count 5 Seconds
Instance of 'Future<Null>'
1
2
3
returned After 5 Second   // this was printed after 5 second

*/

// function which is marked with async must return Future type object
Future<String> giveResultAfter5Sec() async {
  // using Future.delayed(Duration duration,FutureOr<String> Function()? computation) we can delay the return 
  return Future.delayed(Duration(seconds: 5), () {
    return "returned After 5 Second";
  });
}


// without async 
/*
Future<String> giveResultAfter5Sec() {
  return Future((){
    return "returned After 5 Second ";
  });
}
*/