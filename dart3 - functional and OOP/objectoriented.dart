//by default all members are public
//default value is null
//it automatically does setters and getters
//to make any variable private use _
class Employee{
  //int _private; //scope is within the file or folder or library
  int _id;
  String name;
  double salary;

  //custom setter and getter
  set eid(int id){
    if(id>0){
      this._id = id;
    }else{
      print('Invalid id');
    }
    
  }

  get eid{
    return this._id;
  }

  void printIt(){
    print('Id is $_id Name is $name and Salary is $salary');
  }

  //highly recommended to use setter and getter in private fields

}

void main(){
  Employee abhishek = Employee();
  abhishek._id = 100; //setter
  abhishek.name = 'Abhishek';//setter
  abhishek.salary = 999909922999.99;
  print(abhishek._id);//getter
}