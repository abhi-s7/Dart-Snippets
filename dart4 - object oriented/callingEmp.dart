import 'emp.dart';//this will not access the private variable

void main(){

  Employee emp = Employee();
  emp = Employee.paramCons(1001, "Abhishek", 150000);
  //both above will create an object but now emp is pointing to some other memory address

  /*
  emp.id = -100;
  emp.salary = -1000;

  Id cannot be negative
  Salary cannot be negative
  Id is null & Name is null & Salary is null
  null
  */
  // emp.id = 1001; /this way setter has been called
  // emp.salary = 909090;
  emp.display();
  print(emp.id);

}

/*
  2 - ways of relationship b/w the classes

  Has - A - When we do import into another file and then use it
      - calling a different class adn making object

  Is - A - e.g. Lion is a Animal
     - It is always inheritence

*/