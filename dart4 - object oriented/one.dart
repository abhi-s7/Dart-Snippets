class Employee{
  int id;
  String name;
  double salary;
  //above all are the instance variable as
  //when the object of the class is created then they come into picture
  //i.e. per object -> Instance variable memory
  //default values of variables are null
  //also by default they are public
  //to make them private use _
  //no protected

}

void main(){
  Employee abhi = Employee();
  abhi.id = -1001;
  abhi.salary = -900;

  /*
  Since dart has by default getter and setters
  but it does not have any conditions
  therefore anyone can set any data inside the fields
  so use private variable suing _
  and to access that we have to use our custom getter and setter
  
  setter - set id()
  getter - get id()

  SOLID - 5 Design Principles

  S - SRP (Single responsibiity Principle)
    - One file is responsible for one kind of thing
    - one.dart is used to create a class
    - callerEmp.dart is used to call this class
    - so both the files have different responsibility


  */

}