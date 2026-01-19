class Emp
{

  var name;
  var surname;

  Emp(var name,var surname)
  {
    this.name = name;
    this.surname = surname;

  }

  void display()
  {
    print("---------------");
    print("Name is $name");
    print("Surname is $surname");
  }
}

void main()
{
    Emp e1 = Emp("aa","aa");
    Emp e2 = Emp("bb","bb");

    e1.display();
    e2.display();
}