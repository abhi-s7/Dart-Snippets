
//to specify command line arguments
void main(List<String> args){
  //we can have n number of command line argumnets
  //it should be of string as of Java

  //3rd party which does the same named: args
  int sum = 0;
  for(String s in args){
    //print(s);
    sum += int.parse(s);
  }
  print(sum);
}