
//import 'dart:core';//by default
import 'dart:io';

void main(){
 // print('hello world');
//  int/ String/ double/ bool //java c++
//  var //javascript
  // var a = 100; // a is like a box
  //100 is an integer value
  //'Abhishek' // String

  // a = 'Abhishek'; //this is allowed in javascript

  // //type inference -> var converts into int or string
  
  /*
    String - Object
    int - Object
    bool - Object

  */
  // int a = 100; // a is 
  // print(a.toString()); //it does this behind the scene
  // //to string is responsible for converting any object to String
  // print('Hello');//anything in b/w double quotes or single quotes is a String

  // myFunction();//call back

  // var name = 'Abhishek';
  // name = 100;

  // dynamic name2 = 'Abhishek'; //dynamic keyword is used to mimic the dynamic nature of datatype just like in javaScript
  // name2 = 1000;

  // String name = "Abhishek hlsdsdkjfskdfkjsdf sdfjsdfhjksdhfjksdjkfjksdfkhsdhfsdfkjhsdkjhfsadhfsakdhfkjshdkjfhskjdhfkjsdjkfjskdhfkjshdkjfhsakjdhfkjsahdfkjhaskjdhfkjasdhfakjsdhfksahdfkjhsadfkj";
  // name = 'Abhishek';
  // String msg = 'sjkdhfjksdkjfhkjshfjksdkjfkjsdfjksdf'
  // 'sdhfshdkjfhkjsadhfkjhsdkjfhkjsdf'
  // 'sdfhsdhkjfhskjdhfkjhsdf';

  // String msg2 = """ fjsadjfklsdfjlsjdlfkjsd
  // sdklfklsdjflkjsdlkf
  // skldjflksdjklfjsd
  // lskdjflksjdlkfjs
  // """;

  // String msg3 = 
  // '''skhfsjdklfksdjfs
  // ajsdkfsaldjfsdfj
  // jasdfjsadjfljsd
  // askjdfhkasdf''';

  // String msggggg = 'Hello i\'m abhishek '; //escaping '
  // //String name = "Hello i'm abhishek ";

  // print(msg3);

  //stringExamples();
  //conversion();
  //addtion();

  String name2 ='Muskan'; //name2.length --> gives the length of String
  print(name2[0]);
  int length = name2.length;
  print('Length of name2 is $length');
  // for(int i  = 0; i<name2.length; i++){ //in java i would do name2.length()

  //   print(name2[i]);

  // }
  //A - 65 
  //a - 97
  print(name2.codeUnitAt(0)); //this gives the ascii value at 0th index of String
  print(name2.codeUnits);
}

void stringExamples(){
  var name = 'Abhishek';
  var name2 = 'Abhishek';

  // memory ref : 1000
  // so both name and name2 will refer to this addresss
  bool result = (name == name2);
  print(result);

  name2 = 'Muskan';//earlier it was Abhishek
  print(name == name2);
  //anytime any manipulation is done on String it creates a  new memory address

  for(int i = 0; i<100; i++){
    name = i.toString(); //this is to convert from integer to String

    print(name);//print does toString() by default
    //immutable
    //it is harmful for the memeory
  }

  StringBuffer sb = new StringBuffer();//new makes an object and it allocates a memory in heap
  
  sb.write('Abhishek ');
  sb.write('Muskan ');
  sb.write('XYZ');//write() appends to the previous result or String

  sb.clear();//it flushes everything in buffer
  sb.write('Yzx');


  print(sb);


}

void conversion(){
    //int to String
    int a = 100;
    String aS = a.toString();

    String w = '1000';//w holds String value

    int b = int.parse(w);//int.parse(w) = 1000//b holds integer value
    //int b = 1000;

    print(w.runtimeType);
    print(b.runtimeType);
    print(w.runtimeType.runtimeType);
    print(w.runtimeType.runtimeType); //_Type is daddy of all the objects
    print(b);

    double ee = 90.6999999999999999;//this holds fractional value
    bool as  = true;//this holds true false value
    print(ee);

    print('B value is $b');//printing b value in a String
    //print('B value is ' + b);//this will give error because b is integer 

    /*

    */
}

addtion(){
  stdout.write('Enter the first number ');//this prints in same line
  //this doesn't comes by default
  //import 'dart:io'
  

  //to get the input from console we use stdin.readLineSync();
  int first = int.parse(stdin.readLineSync());//this is responsible to take input
  //this give string value
  //cin>> in c++
  //scanf() in c
  // Scanner  in java


  stdout.write('Enter the second number ');
  int second = int.parse(stdin.readLineSync());

  //int result = first +  second;
 // print('Result is $result');

  print('Result is ${(first +  second)*second}');
  String name = 'Abhishek';
  print('My name is ' + name);//drawback - name should be in String otherwise it will give error

  /*String interpolation
  1. $
  2. +
  3. ${variable}

  */
 
  //c++/JAVA name2.charAt(0);
  

}



//myFunction is a function
//i'm passing a function
//i can also return a function

// myFunction(Function a){

// }

// myFunction() async(){
//   await();
//   //it does the task first then send the response
// }