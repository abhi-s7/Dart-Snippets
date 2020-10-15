//this is for 100% abstraction
//abstract methods are bodyless method
//we cannot create object of it
//there is no keyword of interface

//Every class has two phases 1. extends or 2. implements
//but we can extend only one class
//but we can implement multiple interfaces

class IPlayer{
  //it is 100% abstract class
  //writing I is a convention
  void jump(){ }
  void walk() {}
  void punch() {}
  void run() {}
  void kick() {}
  //if we use any variable then any class implements
  //therefore use static or final

  //int maxPower = 100;
  //but this will always override the variable for every class
  //therefore use final
  final int MAX = 100;

  static final int MAX_S = 1000;
  //static binds with class i.e. it will bind with interface therefore
  //it will not be override

}

//common functionality is coming from abstract Class and special functionality is coming from IPlayer class

abstract class CommonPlayer{
  void hit(){
    print('HIT');
  }

  void defense(){
    print('Defense');
  }
}

class Ryu extends CommonPlayer implements IPlayer{
  @override
  void jump() {
    // TODO: implement jump
  }

  @override
  void kick() {
    // TODO: implement kick
  }

  @override
  void punch() {
    // TODO: implement punch
  }

  @override
  void run() {
    // TODO: implement run
  }

  @override
  void walk() {
    // TODO: implement walk
  }

  @override
  // TODO: implement MAX
  int get MAX => null;

}

//both have same standardization of interface

class Honda implements IPlayer{
  @override
  void jump() {
    // TODO: implement jump
  }

  @override
  void kick() {
    // TODO: implement kick
  }

  @override
  void punch() {
    // TODO: implement punch
  }

  @override
  void run() {
    // TODO: implement run
  }

  @override
  void walk() {
    // TODO: implement walk
  } 

  @override
  // TODO: implement MAX
  int get MAX => null;

}