void main(){
  List<Function> list = show();//calling show and storing the return value in list
  list[0]();//calls add()
  list[1]();//calles sub()

  Map<String, Function> map = show2();
  map["adder"]();
  map["subract"]();
  //both are possible
}

List<Function> show(){
  add(){
    print('Add ');
  }
  sub(){
    print("Subtract");
  }

  return [add, sub];//returning a list of functions
}

Map<String, Function> show2(){
  //show2() is an outer functions
  //while add() and sub() are inner function 
  //therefore we have to wrap these two function inside a map or list 
  //then return map and we can call inner functions with the use of key
  add(){
    print('Add ');
  }
  sub(){
    print("Subtract");
  }

  return {"adder": add, "subtracter": sub};//returning a Map of functions
}