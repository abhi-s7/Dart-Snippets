
void main(){
  //switchFn();
  loopingStatements();
}
//switch operator
switchFn(){
  int day = 1;
  switch(day){
    case 1: print('First Case');
    continue reachToThree;//this is a lable
    //same as goTo
    //continue with labelling
    //adv: executes multiple case blocks

    case 2: print('Second case');
            break;//it breaks the case

           reachToThree://this will act as the landing site when used continue with label
    case 3: print('Third Case');
            break;

  //inside switch we cannot call functions so goTo is not suitable
  //but continue with labelling gives the feature of goto
  //MULTIPLE CASE HANDILING  is possible now

  //
  }
}

/***********************************************/
loopingStatements(){
  for(int i = 1; i<= 10; i++){
    int j = 1;
    while(j<=10){
      j++;
    }
  }

  //do while
  int i = 1;
  do{

  }while(i<=10);
}
/*********************************************** */
breakAndContinue(){
  outer:
  for(int i = 1; i<=3; i++){
    for(int j =1; j<=3; j++){
      if(i==j){
        //break outer;//this will break the ith loop i.e. the outer loop
        //break;//break terminates the current loop
        //continue;//it will skip the current iteration
        continue outer;//it is same as break; for inner loop
        //as it will skip the ith loop 
      }
      print('I is $i and J is $j');
    }
  }
}