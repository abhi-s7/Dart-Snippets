class Employee{
  int _id;
  String _name;
  double _salary;
  double _bonus;
  String _city;
  String _phone;

  /*
  Constructor - Same name as that of constructor
  Every class have by default an Empty Constructor
  As when we are making an object
  Employee ram = new Employee();
  Here Employee() is empty constructor that we are calling
  
  It is used to initialize the instance values
  Two - Default or Parameterized

  */


  /*
  Dart allows only one constructor at one time
  so we cannot assign two constructor
  one - default
  second  -parameterized constructor
  only one is allowed
  constructor is used to initialize the member variable

  By default dart provides the default constructor and we can override it otherwise it is present
  */

  Employee(){
    _id = 0;
    _name = '';
    _salary = 0.0;
  }
  //But if I want to define multiple construct then
  //we have to go with Name constructor

  // Employee(int id, String name, double salary){

  /*
  Employee.paramCons(int id, String name, double salary){
    this._id = id;
    this._name = name;
    this._salary = salary;
  }
  */

  //above one is pure initialization but this is shorthand
  Employee.paramCons(this._id, this._name, this._salary);//short hand


  //optional parameters
  Employee.flexiCons(int id, String name, double salary, {double bonus, String city = '', String phone = ''}){
    //every thing in {} are optional
    this._id = id;
    this._name = name;
    this._salary = salary;
    this._bonus = bonus ?? 0;//i.e. if it is not passed i.e. null assign 0 to bonus
    this._city = city;
    this._phone = phone;
    //@required : coming from meta package
  }

  


  //setter are whole sole responsible for setting the private variable
  set id(int id){
    //we can provide our logic here to set the id
    if(id<0){
      print('Id cannot be 0 or negative');
      return;
    }
    this._id = id;
  }

  get id{
    return this._id;
  }


  set salary(double salary){
    //we can provide our logic here to set the id
    if(salary<0){
      print('Salary cannot be negative');
      return;
    }
    this._salary = salary;
  }

  get salary{
    return this._salary;
  }

  display(){
    print('Id is $_id & Name is $_name & Salary is $_salary');
  }
}