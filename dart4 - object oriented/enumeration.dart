//enum represent set of constants
//All fixed values are collected inside enum
//it is represented by English meaning but behind the scene it is 0,1,2

void main(){

  print(Day.SUNDAY.index);//index tells the index of the enum
  List<Day> days = Day.values;//this gives the set of Values in enum
  //list of enumeration constants
  print(days);
  //these are suitable for Switch Case

  Day d1 = Day.SUNDAY;

  switch (d1){
    case Day.SUNDAY:
    print("Something");
    break;

    case Day.MONDAY:
    print("");
    break;
    
    case Day.TUESDAY:
    print("");
    break;

  }
}

enum Day {
  SUNDAY, MONDAY, TUESDAY
}