class Bankaccount{
  int? cardNumber;
  String? name;
  double? balance;
  // this. is important because it takes the assign the entered value to the new object from the class
  Bankaccount({cardNumber, this.name, this.balance});

  deposite(double amount){

    double res = balance! + amount; 
    return res;
          
  }
  withdraw(double amount){
  
    double res = balance! - amount; 
    return res;
          
  }
  checkBalance(){

    double res = balance!; 
    return res;
          
  }
  transferMoney(String Account_other, double amount){
    double res = balance! - amount;
    return res;
  }

}

// abstract class NormalAccount extends Bankaccount{
  
  
//   deposite(double amount){
//     balance = balance + amount;
//     return amount;
//   }
//   withdraw(double amount){
  
//   }
//   checkBalance(){

//   }
//   TransferMoney(String Account_other, double amount){



//   }
// }
 
// abstract class SavingAccount extends Bankaccount{
//   double? interest;

//   deposite(double amount){

//   }
//   withdraw(double amount){
  
//   }
//   checkBalance(){

//   }
//   TransferMoney(String Account_other, double amount){

//   }

// }
