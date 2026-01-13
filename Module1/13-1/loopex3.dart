import 'dart:io';
void main()
{
  int fdigit=0,ldigit=0;

  print("Enter Your Number: ");
  int number = int.parse(stdin.readLineSync().toString());//1234

  ldigit = number % 10;//4

  while(number>0)
  {
    if(number>9)
    {
      number = number ~/ 10;//123//12//1
    }
    else
    {
      fdigit = number;
      number = number ~/ 10;
    }
  }

  int sum = fdigit+ldigit;
  print("Sum of first and last digit is : $sum");
}