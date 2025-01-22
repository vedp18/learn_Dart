void main(List<String> args) {
  Animal animal1 = Cat();
  animal1.sound();    // Output: meow....meow...

  Animal animal2 = Dog();
  animal2.sound();    // Ouput: Bhav.....Bhav


  /// Abstraction is just hiding all complex or internal details or implementation and shows only important features
  /// achieved through abstract classes or interfaces
}

// so here we abstracted internal implementations of Animal 
abstract class Animal {
  void sound();
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