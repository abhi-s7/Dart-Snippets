import 'dart:io';
void main(){
  //real time example of callback
  // List<int> list = [10,20,30];
  // list.forEach((ele) => print(ele));

  //File operations - comes from dart:io
  String path = 'E:\IT\Flutter\BVICAM\dart-basics\dart-day3\caller2.dart';
  File file = new File(path);
  print("Before ReadAsString");
  Future<String> future = file.readAsString();
  //This will give future as it will be coming from future as disk operations are slower
  //this is non blocking code so below 'After ReadAsString will run first then later on Future will be got
  future.then((value) => print(value)).catchError((err) => print(err));
  print('After ReadAsString');
}

/*
  Thread - code in execution 
  if main is running then it is thread

  Now FileHandling is Disk i/o operations
  in Java it can make multiple thread
  but having multiple threads in Mobile the mobile gets hanged
  Therefore dart has only Single thread - Event loop
  Single thread means - Only one operation

  But Disk operations are slower and it would hang the mobile
  therefore it is done by background Thread
  which is async
  Therefore Eventloop gives a Future that background thread will give result in future
  So that event loop doesn't gets hanged
*/