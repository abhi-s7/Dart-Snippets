void main(){

  Map<String, Function> map = calc();
  map["add"]();
  //a -> b -> c
  /*
  When a functions is called then it gets pushed into call Stack
  Now when it gets executed it pops out and destroys all the local members
  therefore we use return -> it gets returned from the stack i.e. add, sub, div gets returned
  but but but x is not returned ************

  Intelligence of functions are:
  When they are returning they return their lexical scope
  Therefore X is lecical scope of add, sub, div
  Therefore X will be returned along with the functions

  */

  map["add"]();
  map["add"]();
  map["sub"]();
  map["div"]();
  //therefore all functions are sharing the data
  ///but it is not a global variable


}
// int x = 100;
//i have this variable and i have to share this to all of the function
//but this is bad practice because it will hold the memory permenantly 
//because it will conflict if i would declare in string


// add(){
//   x++;
// }

// sub(){
//   x--;
// }

// div(){
//   x ~/= 10;
// }

//solution - wrap thme inside a bigger fun and now it will become local variable

calc(){
Map<String, Function> calc(){

    int x = 100;

  add(){
    x++;
    print('X in add is $x');
  }

  sub(){
    x--;
    print('X in sub is $x');
  }

  div(){
    x ~/= 10; //this will convert into integer 
    //behind the scene it does .round()
    print('X in div is $x');
  }
  //as we cannot call these function therefore we have to return them
  return {"add": add, "sub": sub, "div": div};//now these are not local as they can be accessed outside

  }
}