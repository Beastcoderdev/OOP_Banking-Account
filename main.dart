import 'dart:io';

import 'Classes.dart';

void main(){
  //Loop the programe
  while(true){
    //Heading of the programe
    print('made by Antony');
    print('\n\n-----------------------Bank------------------------\n');


    // account register //
    stdout.write('your name: ');
    String name = stdin.readLineSync() ?? '';
    List<String> Firstname = name.split(' ');

    stdout.write('Enter money to account: ');
    double balance = double.tryParse(stdin.readLineSync()!) ?? 0;


    // take a template from class
    Bankaccount p1 =Bankaccount(name: Firstname[0], balance: balance);

    print('\n-----------Welcome to the Bank-----------\n'); 

    
    // 
    print("Hello, ${p1.name}");
    print("your balance is ${p1.balance}");

    
    
    // 



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



    // methods


    switch(operation){
      case 1:
        print('\n********deposite operation********n'); 

        stdout.write('\n\nEnter the amount: ');
        double amount = double.tryParse(stdin.readLineSync()!) ?? 0;
        
        print("Done, your balance is: ${p1.deposite(amount)}");
       
      case 2:
        print('\n********Withdraw operation********n'); 

        stdout.write('\n\nEnter the amount: ');
        double amount = double.tryParse(stdin.readLineSync()!) ?? 0;
        
        print("Done, your balance is: ${p1.withdraw(amount)}");

      case 3:
        print('\n********Check balance operation********n'); 
        
        print("your balance is: ${p1.checkBalance()}");

      case 4:
        print('\n********Transfer operation********n'); 
        stdout.write('\n\nEnter the account: ');
        String Account_other = stdin.readLineSync() ?? '';


        stdout.write('\n\nEnter the amount: ');
        double amount = double.tryParse(stdin.readLineSync()!) ?? 0;
      

        print("Done, your balance: ${p1.transferMoney(Account_other, amount)}");

      case 0:
        print("\nThis programe was written by Antony Hany \nI love flutter 😜");
        break;
      default: 
        print('Invaild programe');
        break;
      }// end of the main switch of (task)


    // End screen
      print('Do u want to make another operations [ yes / no ]?');
      String? res = stdin.readLineSync() ?? "Sorry we didn't understand your input";
      
      if(res =='yes'){
        print('*****************Restarting the programe*****************');    
      }else{
        print("Thank you for using our program");
        break;
      }

  }
    
} // end of main method