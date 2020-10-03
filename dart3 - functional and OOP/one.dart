void main() {
  final int MAX = 100;
  const int MIN = 1;
  final StringBuffer sb = new StringBuffer();
  final StringBuffer sb2 = StringBuffer();

  //in dart 'new' keyword is optional so both are true

  /*
    final - Java style code so no implicit type
    1. runtime constant
    2. Instance variable
      2.1 Can be initialized directly
      2.2 Via constructor

    const - Javascipt style
    1. Compile time constant - so it will automatically detect the datatype
    2. not used on instance level

  */

  // const StringBuffer sb3 = StringBuffer();
  A1(2000); //this will initialize x2 with 2000

  print(A1.y); //to get Y

  //~ly we can create a const list
  const list = [10,20,30];

}

class A1 {
  //the value must be defined instant
  //but const cannot be used at instance

  final int x = 100;
  //const int y = 100;//this gives error

  //another way to initialize final variable other than instance
  final int x2;
  A1(this.x2);

  static const int y = 300;
  //10:00

}
