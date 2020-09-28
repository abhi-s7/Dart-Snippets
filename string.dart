void main() {
  String name = 'Abhishek';
  print(name[1]); //every print statement converts
  // the object into String then print it

  //converting into to String and vice versa
  String numS = "1000";
  int num = int.parse(numS);
  print('Num is $num');
//putting dynamic part in a string --> String interpolation

  print(num.toString().runtimeType); //this will convert into string
  // + operator is concatenating operator
  //so if it is done with String then both side should be of same type
  print('Type is ' + name.runtimeType.toString());
  //name.runtimeType -> it is of type 'Type';

  /* printing is of 3 types
  1. $ - dynamically add an variable
  2. + - String concatenation
  3. ${}
  */
}
