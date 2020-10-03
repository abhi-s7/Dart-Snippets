void s(){
  int x = 100;
  void disp(){
    void output(){
      int y = 200;
    }
    //x and y are both local but x scope is more than y
  }
}

void show(){
  int x = 100;
  void disp(){
    int x = 200;
    print("disp x is $x");
    void output(){
      int x = 300;
      print("output x is $x");
      //output x will be 300 
      //as it will check to nearest scope of x
      //if it is not found here then it will look up
      //this is called lexical scope
      //it is only possible when it is nested way

    }
    output();//200
  }
  disp();
  print('Show x is $x');//100

}

void main(){
  show();
}