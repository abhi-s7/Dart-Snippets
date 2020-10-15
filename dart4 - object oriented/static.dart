class A{

  A._(){
    //default constructor is private so
    //this will prevent the inheritence
    //prevent the object creation
    print("private constructor");
  }

  static int y = 100;
  static const int z = 100;
  //const can be used with static but not with instance variables
  static void show(){
    print("A show");
  }
}
void main(){
  print(A.y);
}