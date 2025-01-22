/// mixin --> mixes in
/// it simply allows classes to use property of others without inheriting it or without creating parent-child relationship
/// since we are not having parent-child relationship here, we can use multiple mixins also


mixin Jump {
  int jumping = 10;
}

mixin Sound {
  String sound = " making sound";
}

class Animal with Jump, Sound {
  void fn(){
    print(jumping);  
  }

  void makeSound() => print(sound);
}

class Dog extends Animal {
  void func(){
    // if parent class uses mixin then its child class can also access or use mixin properties without mixing in it
    print(jumping);
  }
}