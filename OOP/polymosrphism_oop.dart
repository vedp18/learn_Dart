void main(List<String> args) {

  Animal animal = Cat();
  animal.sound();   // Output: meow....meow...
  /// So here variable animal is of Animal class refering to Cat class, hence act as Cat at that time

  animal = Dog();
  animal.sound();   // Bhav.....Bhav
  /// And when we refer animal to Dog class, then it will act as Dog
  

  /// So here one variable was able to take many forms which shows polymorphism achieved through overriding and inheritance 
}

class Animal {
  void sound(){
    print("Animal making sound");
  }
}

class Cat extends Animal {
  @override
  void sound() {
    print("meow....meow...");
  }
}



class Dog extends Animal {
  @override
  void sound() {
    print("Bhav.....Bhav");
  }
}