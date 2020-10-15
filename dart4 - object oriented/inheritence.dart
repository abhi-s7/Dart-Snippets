abstract class Account{

  int id;
  String name;
  double balance;

  Account(){
    print('Account Class Default Cons call');
    id = 0;
    name = '';
    balance = 0.0;
  }

  void withdraw();//abstract methods
  //every abstract methods always needs to be overrided

  Account.nameCons(double roi){
    print('I am a named const of Account');
  }

  Account.nameCons2(double roi){
    print(roi);
  }

  Account.consRed() : this.nameCons2(10);
  //Account.consRed() : this();//it will call the default of Accounts

  //this - refers to the current members in the class
  //super - refers to the upper class i.e. parent class

  void deposit(){
    print('Deposit method of Account');
  }

  /*
  parent has a function and child overrides that parent function
  BECOZ When the ******parent features are outdated *******
  */
}



class SavingsAccount extends Account{
  //saving account is inheriting a class called Account
  //using the extents keyword 
  //i.e. SavingsAccount is reusing the feature of Account

  //constructor never inherits as it is bind with the class
  //Since the Constructor name and Class name is same

  double roi;
  int limit;

  
  //There are 5 fields in SA as 3 from Account and 2 within its own class
 
  // SavingsAccount(){//implicit - it is internally written like below
  // SavingsAccount() : super(){//explicit
    //super() is accessign the parent class and gives features to the child class
    //super always goes to the uper - i.e. up level
    //this is CONSTRUCTOR CHAINING

  SavingsAccount() : super.consRed(){//this will call the named constructor of parent instead of default
    this.roi = 100.2;
    print('Saving Account Default Cons Call');
  }

  //SavingsAccount.myCons(double roi){
    SavingsAccount.myCons(double roi) : super.nameCons(100.20){
      //************************************************** */
      //super.nameCons() will call the ******parameterized constructor of parent*****
    this.roi = roi;
    print('I am a named one of SavingsAccount');
  }

  SavingsAccount.redirectCons() : this();
  /*
  This it is Redirecting constructors which means it can't have a body.
  Body is something we write in {} 
  Therefore it's whole sole purpose is to redirect and with this() we tell its a redirecting one
  */

  @override//this way parent feature is gone and now child logic to deposit() will work
  void deposit(){
    /*************************** */
    //but if you want to call deposit() of parent then use super
    super.deposit();
    /*************************** */
    print('This is deposit of Savings Acount'); 
  }

  @override
  void withdraw() {
    // TODO: implement withdraw
  }
}

void main(){
  //SavingsAccount sa = SavingsAccount();//this will call SA Constructor
  //And this is Automatically calls the Account Constructor

  /*
  Note:: When you call a child Class constructor then it automatically calls the parent class constructor

  */

  SavingsAccount sa = SavingsAccount.myCons(7.4);
  /*
  Note:: When we call a named constructor it always invokes the default constructor of parent

  */
  sa.deposit();

  //Account account = Account();
  //donot create an object of Generic one as we don't know Account of which type the user holds?
  //SavingsAccount is special one of type Account
  //Therefore use abstract in Account so that no one can object of Account accidently
  //As it is meaning less of creating object of Account
}