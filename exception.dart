void main(List<String> args) {

/*

  print(10~/3);   // 10/3 = 3.3333 -> 3
  print(10/0);    // anything divide by zero is infinity -> Inifinity
  print(10~/0);     // throws an exception like given below
  /*
  Unhandled exception:
  IntegerDivisionByZeroException
  #0      int.~/ (dart:core-patch/integers.dart:27:7)
  #1      main (file:///D:/VS_CODE/Dart/exception.dart:2:11)
  #2      _delayEntrypointInvocation.<anonymous closure> (dart:isolate-patch/isolate_patch.dart:295:33)
  #3      _RawReceivePort._handleMessage (dart:isolate-patch/isolate_patch.dart:184:12)
  */

  print("VED");   // this won't get printed 
*/


  // Handling exception so program doesn't stopped working
  // using try-catch block

  try {
    print(10~/0);
  }
  // to catch specific Exception 
  on FormatException catch (e){
    print("Format Exception,  $e");
  } 
  catch(e){
    print("${e.runtimeType} :  $e");
  } 
  // optional, normally used for cleanup tasks 
  finally {
    // this blocks always get executed 
    print("Final Block");
  }


  print("VED");


  /*
  Output:
  IntegerDivisionByZeroException :  IntegerDivisionByZeroException
  Final Block
  VED

  */
  



}