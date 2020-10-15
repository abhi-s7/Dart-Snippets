//To use multiple inheritence

/*Disadv of Multiple inheritence:
  If x property that is inherited from 3 parents
  then the child is confused which property is to use
  1. So this arrise ambiguity error
  2. This will also give error in constructor Chaining 
      as it does not know to which parent super has to go
*/

//Therefore mixins solves the above 2 problems
//keyword : with
//same methods get override 

class X {
  void show() {
    print("I am X Show");
  }
}

class Y {
  void disp() {
    print("I am Y Disp");
  }
}

class Z {
  void output() {
    print("I am Z Disp");
  }
}

class P {
  void result() {
    print("I am P Result");
  }
}

class Child extends P with X, Y, Z {
  void callIt() {
    output();
    result();
    disp();
    show();
  }
}

void main() {
  List<Child> childList = [Child(), Child()];
  Child c = Child();
  c.callIt();
}