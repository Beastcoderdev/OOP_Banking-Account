import 'dart:io';

import 'Classes.dart';

void main(){

  //Loop the programe
    // Choose account type
  

   // empty object before while loop so we can check if it is null or not
   
    Bankaccount p1 = Bankaccount();
  

  while(true){

    if(p1.name == null && p1.balance == null){//Heading of the programe
      print('made by Antony');
      print('\n\n-----------------------Bank------------------------\n');

      // account register //
      stdout.write('your name: ');
      String name = stdin.readLineSync() ?? '';
      List<String> Firstname = name.split(' ');

      stdout.write('Enter money to account: ');
      double balance = double.tryParse(stdin.readLineSync()!) ?? 0;


      // choose account type ( saving / normal )
      print('what is the type of your account?');
      print('\n  a) Normal account \n  b) Saving account ');

      String? res = stdin.readLineSync() ?? "Sorry we didn't understand your input";

      // take a template from class and instance it from a specific class
      (res.toLowerCase() =='a') ? p1 = NormalAccount(name: Firstname[0], balance: balance) : p1 = SavingAccount(name: Firstname[0], balance: balance);
      
      // take a template from class ( instance it from super class )
      // p1 =Bankaccount(name: Firstname[0], balance: balance);
    }
    
    print('\n-----------Welcome to the Bank-----------\n'); 
    
    // Welcoming
    print("Hello, ${p1.name}");
    print("your balance is ${p1.balance}");
      


    //menu of operations   
    Map<int, String> task_title = {
      1:'deposite',
      2:'withdraw',
      3:'check Balance',
      4:'transfer',
    };
    task_title.forEach((key, value){
      print('$key) $value');
    });

    print('\n-----------------------------------------------------\n');

    stdout.write('choose your operation: ');
    int operation = int.tryParse(stdin.readLineSync()!) ?? 0;



    if(p1 == NormalAccount() || p1 == SavingAccount()){    
      switch(operation){
      case 1:
        print('\n********deposite operation********'); 

        stdout.write('\n\nEnter the amount: ');
        double amount = double.tryParse(stdin.readLineSync()!) ?? 0;
        
        print("Done, your balance is: ${p1.deposite(amount)}");


      case 2:
        print('\n********Withdraw operation********'); 

        stdout.write('\nEnter the amount: ');
        double amount = double.tryParse(stdin.readLineSync()!) ?? 0;
        
        print("Done, your balance is: ${p1.withdraw(amount)}");


      case 3:
        print('\n********Check balance operation********'); 
        
        print("your balance is: ${p1.checkBalance()}");
        

      case 4:
        print('\n********Transfer operation********'); 
        stdout.write('\n\nEnter the account: ');
        String Account_other = stdin.readLineSync() ?? '';
        List<String> Firstname_ao = Account_other.split(' ');


        stdout.write('\n\nEnter the amount: ');
        double amount = double.tryParse(stdin.readLineSync()!) ?? 0;
        // the money transfered to. account
        NormalAccount p2 = NormalAccount(name: Firstname_ao[0], balance: amount); 

        if(p1.balance! >= amount){
          print("Done, your balance: ${p1.transferMoney(Account_other, amount)}");
          print("your transfered ${p2.balance} to ${p2.name}");
        } else {
          print("Invaild operation");
        }
                
      case 0:
        print("\nThis programe was written by Antony Hany \nI love flutter 😜");
        break;

      }// end of the main switch of (task)}
    // methods



    // End screen
      print('Do u want to make another operations [ yes / no ]?');
      String? res = stdin.readLineSync() ?? "Sorry we didn't understand your input";
      
      if(res.toLowerCase() =='yes'){
        print('*****************Restarting the programe*****************');    
      }else{
        print("Thank you for using our program");
        break;
      }
    } 
  }
} // end of main method