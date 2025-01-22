void main(List<String> args) {
  final human = Human("Ved", 21);
  print("Name: ${human.name}, Age: ${human.age}");

  // theres another way to do same
  final Human(:age, :name) = human;     // here we have to write with same spell as written in class definition, order can be change
  print("Name: $name, Age: $age");    // Gives same output as above print statement does

  // even we can give custom aliases to them and can even write in any order
  final Human(age:a, name:n) = human;
  print("Name: $n, Age: $a");    // Gives same output as above print statement does


}

class Human{
  int age;
  String name;
  Human(this.name, this.age);
}