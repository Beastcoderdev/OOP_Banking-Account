import 'dart:io';

void main(){
  //Loop the programe
  while(true){
    //Heading of the programe
    print('made by Antony');
    print('\n\n-----------------------Bank------------------------\n');

    stdout.write('your name: ');
    String name = stdin.readLineSync() ?? '';
    List<String> Firstname = name.split(' ');

    print("Hello, ${Firstname[0]}");
    
    double Balance = 2000.0;
    print("your balance is $Balance");

    //menu of tasks   
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

    stdout.write('your choise is: ');
    int task = int.tryParse(stdin.readLineSync()!) ?? 0;



    // methods


    switch(task){
      case 1:
        
      case 2:
        stdout.write('\n\nyour name is: ');
        // you can't put an if condition on user input directly. because the user input is unkown
        String name = stdin.readLineSync() ?? 'Name';
        // that is why assign the user input in an int
        
        getmiddle(String name){
          int length = name.length;
          int middle = length~/2; // if / means i need a double but I need to make it int so ~/ will do the job
          if (length % 2 ==0){
            return name[middle-1]+name[middle]; // midle taskes the last middle character ex; Antony -> o, (even 6 characters)
            // so by middle -1 and middle. we get the pre-middle caracter by using ~/ it is the last middle character 
            //+ first middle character [middle-1] by using index
          } else {
            return name[middle];
          }
        }

        print(getmiddle(name));
      case 3:
        print('--------------Circle calculator--------------');   
        while(true){
          
          print('Enter the perimeter of the circle:');  
        
          String? value = stdin.readLineSync();
          double perimeter = double.tryParse(value.toString()) ?? 0; 
        

          double radius = perimeter/(2*3.141592653589793);
          double area = 3.141592653589793*(radius*radius);
          String r_res = perimeter.toStringAsFixed(2);
          String area_res = area.toStringAsFixed(2);


          print('What do you want to calculate? \n (a) radius \n (b) Area \n (c) Both:');
          String? operation = stdin.readLineSync() ?? 'Invalid input'; 


          switch(operation){
          case 'a':
            print('has an permeter of $r_res cm\n');
            break;
          case 'b': 
            print('has an area of $area_res cm^2\n');
            break;
          case 'c': 
            print('has an permeter of $r_res cm');
            print('And an area of $area_res cm^2\n');
            break;
          default:
            print('Invaild Operation\n');
            break;
          }
        }
      case 4:
        // (3)Count Number of Digits in an Integer
        print("Enter words:");
        String? input = stdin.readLineSync() ?? "";
        int word_length = input.length;

        // no. of characters 
        print("\nthe number of character are $word_length");
        // no. of words
        List<String> res = input.split(' ');
        print("the numner of words are ${res.length}\n");
      case 5:
        while(true){
          print('Enter the First number:');  
          int num1 = int.tryParse(stdin.readLineSync()!) ?? 0;
          print('Enter the Secound number:');
          int num2 = int.tryParse(stdin.readLineSync()!) ?? 0;




          print('Enter operation (   +, -, x, /   ):');
          String? sign = stdin.readLineSync() ?? 'Invalid input'; 

        
          add(int number_res){
            number_res = num1 + num2; 
            return number_res;
          }

          sub(int number_res){
            number_res = num1 - num2; 
            return number_res;
          }

          multi(int number_res){
            number_res = num1 * num2; 
            return number_res;
          }

          division(double number_res){
            number_res = num1 / num2; 
            number_res.toStringAsFixed(1);
            return number_res;
          }

          switch(sign){
          
            // case _ according to the data type(int, string, ...etc)
            case '+':
              print("the addition is $add");
              break;
            case '-': 
              print("the subtraction is $sub");
              break;
            case 'x': 
              print("the multiplication is $multi");
              break;
            case '/':
              print("the division is $division");
              break;
            default:
              print('Invaild Operation');
          }
        }
      case 6:
        //password check letters + numbers

        // DON"T KNOW HOW ;(
        stdout.write("your password:  ");
        String pass = stdin.readLineSync() ?? '';

        RegExp regExp = RegExp(
          r'^(?=.*?[A-Z])(?=.*[a-z])(?=.*[0-9])(?=.*[!@#\$%^&*~]).{8,}$'
        );


        if (!regExp.hasMatch(pass)) {
          print("\nyour password is vaild");
        } else {
          print("\nINVAILD PASSWORD");
        }



        

  


      case 7:
        
      case 0:
        print("\nThis programe was written by Antony Hany \nI love flutter 😜");
        break;
      default: 
        print('Invaild programe');
        break;
      }// end of the main switch of (task)


    // End screen
      print('Do u want to make another operations [ y / n ]?');
      print("\n - type 'y' for Yes \n - press Enter OR any key for No ");
      String? res = stdin.readLineSync() ?? "Sorry we didn't understand your input";
      
      if(res =='y'){
        print('*****************Restarting the programe*****************');    
      }else{
        print("Thank you for using our program");
        break;
      }

  }
    
} // end of main method