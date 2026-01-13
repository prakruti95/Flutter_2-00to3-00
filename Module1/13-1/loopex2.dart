import 'dart:io';
void main()
{
  int rev=0;

  print("Enter Your Number: ");
  int number = int.parse(stdin.readLineSync().toString());


  while(number>0)
  {
      int rem = number%10;//4//3//2//1
      rev = (rev*10)+rem;//4321
      number=number ~/ 10;//123//12//1//0

  }
  print("Reverse Num is : $rev");
}