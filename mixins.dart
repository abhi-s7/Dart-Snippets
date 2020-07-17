
class Animals {
  void move() {
    print('Changes Position');
  }
}

class Fish extends Animals {
  @override
  void move() {
    super.move();
    print(' by Swimming');
  }
}

class Bird extends Animals {
  @override
  void move() {
    super.move();
    print(' by Flying');
  }
}

/*
 * In order to get rid of overriding and using super to take functionality of the parent and use it in our code we can either use mixins { which is similar to interfaces in java } and call them using keyword 'with'
 
 Problem: we can only have single inheritence
 Sol. we can have multiple mixins to be used inside a class
 Aim: We can incorporate a lot of code written in a class and use in different classes without having to do inheritence

 */ 

mixin canFly{
  void fly(){
      print('Mixin: by flying');
  }
}

mixin canSwim{
  void swim(){
      print('Mixin: by Swimming');
  }
}

class WFish extends Animals with canSwim{
  @override
  void move(){
    print('Fish changes position');
  }
}
//we can both use extends as well as with
//i.e. mixins with inheritence
//same as interfaces with inheritence in JAVA
class Duck extends Animals with canFly, canSwim{
  @override
  void move(){
    print('Duck changes position');
  }
}

void main() {
  //Bird().move();
  //Fish().move();
  WFish().move();
  WFish().swim();
  print('******************');
  Duck().move();
  Duck().fly();
  Duck().swim();
}


/************************Output********************************/
/*
Fish changes position
Mixin: by Swimming
******************
Duck changes position
Mixin: by flying
Mixin: by Swimming

*/
