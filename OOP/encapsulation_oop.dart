/// Encapsulation is bundling data(variables) and methods into capsule or single unit.
/// Making data only accessible through methods only instead of direct access.
/// achieved using private variables (_<varName>) and getters & setters

class A {
  int _var1 = 10;

  int get var1 => _var1;

  set var1(int var1) => _var1 = var1;
}

/// now _var1 is private variable cannot be accessed directly outside this library, only accessible using getVar1() method only.
