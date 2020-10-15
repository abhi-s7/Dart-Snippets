//every class inherit object class
//extends Object is always behind the scene

//required when we want to do operations b/w the objects not with the normal datatypes

// class Vector{
  class Vector extends Object{
  //Whenever we create a class it by default inherits the object class
  //object class is root class
  int x, y;
  Vector(this.x, this.y);

  Vector operator +(Vector obj) => Vector(this.x + obj.x, this.y+ obj.y);
  //this way we have overrided the + operator
  //this.x is current obj
  //obj.x is passing obj
  //Vector()//this will create an object of vector
  @override
  String toString(){
    return "X is $x and Y is $y";
  }


}

void main(){
  Vector a = Vector(1,1);
  Vector b = Vector(2,2);
  Vector c = a+b;
  print(c);//c.toString() and it gives InstanceOf Vector as an output
}