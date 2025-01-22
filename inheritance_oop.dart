
void main(List<String> args) {
  // Car car = Car();
  final car = Car();

  print(car.isEngineWorking);
  print(car.noOfWheels);    // it works for Car class reference variable only.
  print(car.accelerate());    // 25 

  Truck truck = Truck();

  print(truck.noOfWheels);
  print(truck.isEngineWorking);

}


class SomeClass {
  int speed = 15;

  void accelerate(){
    speed += 30;
  }

}

class Vehicle extends SomeClass{
  bool isEngineWorking = false;
  bool isLightOn = true;
  

  // It is same method as there in SomeClass but it will be overriden
  // To override the method both methods name signature should be same (return type may be can different)
  @override
  int accelerate() {
    speed += 10;
    return speed;
  }

}

// Another class Car which will inheritate properties of Vehicle
class Car extends Vehicle {
  int noOfWheels = 4;

  void printSomething(){
    print(noOfWheels);
  }
}

// Another class Truck which will inheritate properties of Vehicle
class Truck extends Vehicle {
  int noOfWheels = 8;

  void printSomething(){
    print(noOfWheels);
  }
}


// Multiple Inheritance using implements
/// when we have properties which will be implemented in child classes according their need 
class Parent {
  int? var1;
  String? var2;
  void printHello(){
    print("Hello");
  }
}

class Child implements Parent {

  /// Here if we implements some class then we have to override all its members or properties otherwise it will give errors 
  @override
  int? var1 = 10;

  @override
  String? var2 = "Overriden";

  @override 
  void printHello(){
    print("Overriden Hello");
  }
}

/// So we can implements normal classes also but although we mostly implements abstract classes 
/// In abstract class we doesn't need to implement whole method insead we just describe rules or structure of its child classes will use or needed
/// when any class implements abstract class, we need to override all properties of abstract class 
/// when any class extends abstract class, we need to override the methods and only variables which we need instead of all properties

abstract class A {
  int? var1;
  String? var2;

  void printBye();
} 

class B extends A {
  @override
  void printBye() {
   print("Bye"); 
  }

  // No need to override variables if not needed
}

class D implements A {

  // compulsorily override all variables 
  // @override
  int? var1 = 10;

  @override
  String? var2 = "Overriden String";

  @override
  void printBye() {
    print("Overriden Bye");
  }
}

/// Both normal classes and abstract classes looks same 
/// Although all classes are implicitly abstract classes
/// Abstrct class is just contract or rule that if any class want use its properties then that class needs to override it.

