/* Mutable vs immutable

Mutable  - that can be modified without changing memory
  e.g. emp.id = 1000; emp.id = 1001;
  Normal classes

Immutable - That cannot be changed without changing memory
  E.G. String objects
  When objects are fixed that never ever change
  so when we make a change we need to make new object

*/


class Immutable {
  final int a;
  final int b;

  //when instance fields are final it does not give setter
  //Immutable(this.a, this.b);
  
  const Immutable(this.a, this.b);

  //to make immutalbe class use final for variable and it is mandate
  //make const with constructor
  //this way it will make class Immutale
  //as through const it specify memory only once
  //as constructor is called only once
  //it will never be updatable
  //const always initialize once
  //const only work with final - otherwise it would give error

}


void main(){
  Immutable obj = Immutable(10,10);
  //this has to be done in this way as it is similar to const rr = 10;
  //as 10 is constant value and it has to be initialize to variable only once

 // obj.a = 100;//when instance fields are final it  
  //never creates a setter so this will give error
  //but it creates a getter
  print(obj.a);
  print(obj.b);
  
}

