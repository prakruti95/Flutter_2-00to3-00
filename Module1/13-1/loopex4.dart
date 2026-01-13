import 'dart:io';
void main()
{
  int max = 0;
  print("Enter Your Number: ");
  int number = int.parse(stdin.readLineSync().toString());

    while(number>0)
    {
      int rem = number % 10;
      if (rem>max)
      {
        max = rem;
      }
      number=number~/10;
    }

    print("Max Or biggest digit is : $max");

}