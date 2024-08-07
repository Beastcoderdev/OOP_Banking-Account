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
    if (amount <= balance!){
      double res = balance! - amount; 
      return res;
    } else{
      print("Invaild operation");
      return balance!;
    }
  }
  checkBalance(){
    double res = balance!; 
    return res;     
  }
  transferMoney(String Account_other, double amount){
    if (amount <= balance!){
      double res = balance! - amount;
      return res;
    } else{
      print("Invaild operation");
      return balance!;
    }
  }

}

class NormalAccount extends Bankaccount{
  
  NormalAccount ({super.cardNumber, super.name, super.balance}); // constructor 
  @override
  deposite(double amount) {
    return super.deposite(amount);
  }
  @override
  withdraw(double amount) {
    return super.withdraw(amount);
  }
  @override
  checkBalance() {
    return super.checkBalance();
  }
  @override
  transferMoney(String Account_other, double amount) {
    return super.transferMoney(Account_other, amount);
  }

}
 
class SavingAccount extends Bankaccount{
  SavingAccount ({super.cardNumber, super.name, super.balance}); // constructor 
  double interest = 100;

  deposite(double amount){
    double res = balance! + amount + interest; 
    return res;      
  }
  withdraw(double amount){
    if (amount <= balance!){
      double res = balance! - amount; 
      return res;
    } else{
      print("Invaild operation");
      return balance!;
    }
  }
  checkBalance(){
    double res = balance!; 
    return res;     
  }
  transferMoney(String Account_other, double amount){
    if (amount <= balance!){
      double res = balance! - amount + interest;
      return res;
    } else{
      print("Invaild operation");
      return balance!;
    }
  }
}
