import 'dart:async';

Future<String> giveMeFuture(){
  // Future<String> future = Future((){
  // Timer.periodic(Duration(seconds: 10), (timer) {
  //     print("I call after 10 seconds");
  //     //it will repeat after each 3 second as it is periodic
  //     //periodic doesnot return anything
  //   });
  // });
  return Future.delayed(Duration(seconds: 10), ()=> "I will return after 10 seconds");
}
void main(){
  Future<String> future = giveMeFuture();
  print('After calling future $future');//So this will be called first
  future.then((value) => print(value))
  .catchError((err)=> print(err));
  //And after 10 second it will give the result


}