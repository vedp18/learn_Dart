void main(List<String> args) {
  final employee1 = Employee("Mohan", EmployeeType.sde);
  final employee2 = Employee("Keshav", EmployeeType.marketing); 


  employee1.fn();   // sde : 100
  employee2.fn();   // marketing : 60
}




// Helps to create boundary for employee types 
// so usefull when employee type checking 
enum EmployeeType {
  sde(100),  // software engineer
  finance(80),   // finance manager
  marketing(60);   // marketing

  // we can do more with enums like..
  // lets say I want to add specific salary with each position
  final int salary;     // enum can declare final variables only

  const EmployeeType(this.salary);
}


class Employee {
  
  final String name;
  // final String type;    // initially without help of enum, we'll need to use string then check all cases

  // instead of that we'll use enum Employee type
  final EmployeeType type;

  Employee(this.name, this.type);


  void fn(){
    print("${type.name} : ${type.salary}");
  }
}