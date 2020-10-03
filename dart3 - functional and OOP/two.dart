void main(){
  var a1 = getList();
  var a2 = getList();
  // final int num = 100;
  // final num2 = 200; 

  print('Reference of both are same? ${a1 == a2}');
  //both memory address are differenct even if the value is same
}


getList(){
  //return [1,2];
  return const [1,2];
  //now it will store [1,2] in a single memory address 
  //i.e. it creates memory only once
  //so every time it is called it will return the same memory address and doesnot create a new list
}