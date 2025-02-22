import 'dart:async';

void main(List<String> args) async {
  //Stream
  print(countDown());     // Instance of '_ControllerStream<int>'
  print(countDown().first);     // Instance of 'Future<int>'
  // print(await countDown().first);     // 5

  // countDown().listen((val) {
  //   print(val);
  // });
  /*
  Output:
  //each affter 1 sec
  5
  4
  3
  2
  1
  */


  // we also have other arguements of listen (handlers like onData(positional) , onError(named), onDone(named))
  // they are of type Functions? 

  // countDown().listen((val) {
  //   print(val);
  // }, onDone: () {
  //   print("Its Done......");
  // });
  /*
  Output:
  // each after 1 sec
  5
  4
  3
  2
  1
  Its Done......
  */

  countDown_1();
}

Stream<int> countDown() async* {
    for (var i = 5; i > 0; i--) {
      yield i;
    // this prints 5 4 3 2 1 but in same manner as normal print function does
    // untill we add below line. After adding below line each integer is printed after 1 sec
      await Future.delayed(Duration(seconds: 1));     // this makes yielding after every 1 second. So it waits for 1 sec before yielding next integer
  }
}

// Its another way to use or controlling stream using Controller 
void countDown_1() {
  final controller = StreamController<int>();

  for (var i = 5; i > 0; i--) {
    controller.sink.add(i);
  }
  // controller.sink.add(4);
  // controller.sink.add(3);
  // controller.sink.add(2);
  // controller.sink.add(1);
    // await Future.delayed(Duration(seconds: 1));

  controller.sink.close();

  controller.stream.listen((val) {
    print(val);
  }, onDone: (){
    print("Its Done....");
  });

  controller.close();

  // It does the same thing
}