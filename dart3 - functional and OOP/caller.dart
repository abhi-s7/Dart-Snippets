import './nested.dart';

void main(){
  //add();//this is the function present in nested.dart file so scope is much higher as we are able to access it from another file
  Function fn = calc();
  if(fn is Function){
    print("yes it is func");
    fn();

  }else{
    print('No it is not a function');
  }
}

Function calc(){//calc is a global function
  void add(){}

    final e = (){
      print("E Function");
    };
  //nested function
  //to limit the scope of the function
  //i.e. e is only available in add() function only

  //to use this function outside therefore return it
  return e;
  
}