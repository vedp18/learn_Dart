/// Encapsulation is bundling data(variables) and methods into capsule or single unit. 
/// Making data only accessible through methods only instead of direct access.
/// achieved using private variables (_<varName>) and getters & setters

class A {
  int _var1 = 10;
  
  int getVar1(){
    return _var1;
  }

  void setVar1(int var1) => this._var1 = var1;

} 

/// now _var1 is private variable cannot be accessed directly outside this library, only accessible using getVar1() method only.
