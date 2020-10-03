void main(){
  parameters();


}

fnTypes(){
    //implicit way
  var x = (){
    print("i'm anonymous Function");
  };

  //explicit way
  Function y = (){
    print('I am also Anonymous Function');
  };
}

int add(int x, int y){
  return x+y;
}

//dynamic type
adder(x, y){
  return x+y;
}

/********************************** */

parameters(){
  // add2(1);
  // add2(10,20);
  // add2(10,20,30);
  //this is do the feature of function overloading

  //order doesnot matter as they are named
  //but earlier order matters
  sub();
  sub(x:30);
  sub(z: 10);
  sub(z:10, x:1, y:2);
  sub(y:3, z:9, x:1);
}

int add2( int m, [int x, int y]){
  //inside square brackets the arguments to pass are optional
  //optional positinal parameters
  // 1 - m, 2- x, 3 - y
  print('m is $m');
  print('x is $x');
  print('y is $y');

  print('*************************');
  //this will work only when number of parameters are less
  //what if the parameters are 50 so it is not feasible to remeber the position of each parameter
  //solutional - named positional parameter
}

int sub({int x, int y, int z}){
  print("X is $x, Y is $y, Z is $z");
}

/*
Just like in Flutter
void main(){
  runApp(MaterialApp(){
    title: 'Title 2020',//title is named parameter in MaterialApp class

  })
}

*/

/*
int sub2({@required int x});//to make it required
//to make this optional argument as compulsory
//use meta library from pub.dev

*/

//default parameter
int subDefault({int x = 100, int y=30, int z}){
  print("X is $x, Y is $y, Z is $z");
  //If value of x and y are not provided it will get x = 100 and y = 30
  //it is on compile time
}
/*
void printIt(List<int> list = [1,2,3]){
  //this is not allowed as list is dynamic 
  //to make list as a default paramter style use const
}
*/
void printIt2({ List<int> list = const [1,2,3] } ){
  //using const it can assign it to compile time
  //also it should be in {}
  print(list);
}
//same as with maps
void printIt3({ Map<String, int> map = const {"Abhishek":1111} }){
  print(map);
}
//but with the normal variable no need to use const