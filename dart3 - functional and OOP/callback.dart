void main(){
  //for e.g. I want to make it cube
  loop((int i) => print(i*i*i));
  print('**************************');
  loop((int i) => print(5*i));

  loop2((int i) => print("Cube is ${i * i* i}"),
        (int i) => print('Table ${5*i}'));
  //declaring and passing 

  loop(cube);//here we are just passing

}
int cube (int num){
  print(num * num * num);
}
loop(Function fn){ //loop is a function and it consumes a func
  for(int i = 1; i<= 10; i++){
    //logic would be passed as a fn 
    fn(i);
    //fn represents (int i) => i*i*i
    //now fn(i) is calling above function
    //now it will run 10 times and i will be passed behind the scene

    //passing 
    //receiving
    //calling

    //pass it early and return it later
  }
}

loop2(Function fn, Function fn2){
   for(int i = 1; i<= 10; i++){
     fn(i);
     fn2(i);
   }
}