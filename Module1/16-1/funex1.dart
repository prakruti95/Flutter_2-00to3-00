//with para with return type
int cal(int a,int b)
{
    return a+b;
}

//with para without return type
cal1(int a,int b)
{
  var c = a+b;
  print(c);
}

//without para with return type
int cal2()
{
  int a = 6;
  int b = 3;
  var c = a+b;
  return c;
}

//without para without return type
 cal3()
{
  int a = 6;
  int b = 3;
  var c = a+b;
  print(c);
}

void main()
{
    print(cal(6, 3));
    cal1(6, 3);
    print(cal2());
    cal3();
}