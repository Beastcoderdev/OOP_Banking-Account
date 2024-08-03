class Bankaccount{
  int? cardNumber;
  String? name;
  double balance = 0;

  deposite(double amount){
    
  }
  withdraw(double amount){
  
  }
  checkBalance(){

  }
  TransferMoney(String Account_other, double amount){

  }

}

class NormalAccount extends Bankaccount{
  
  deposite(double amount){
    balance = balance + amount;
    return amount;
  }
  withdraw(double amount){
  
  }
  checkBalance(){

  }
  TransferMoney(String Account_other, double amount){



  }
}
 
class SavingAccount extends Bankaccount{
  double? interest;

  deposite(double amount){

  }
  withdraw(double amount){
  
  }
  checkBalance(){

  }
  TransferMoney(String Account_other, double amount){

  }

}
