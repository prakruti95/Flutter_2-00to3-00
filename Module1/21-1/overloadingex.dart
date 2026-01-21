// Method Overloading: When two or more methods having a same name
// and number of parameters are diffrent then it's called method overloading

// Method Overriding: When two or more methods having a same name
// and number of parameters are also samr then it's called method overriding
class Count
{
    int cal(int a,int b)
    {
        return a+b;
    }
    int cal(int a,int b,int c)
    {
      return a*b*c;
    }
}