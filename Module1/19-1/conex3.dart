class Student
{
  Student(var name,[var surname])
  {
      print("$name and $surname");
  }
  Student.a(var name)
  {
    print("$name");
  }
}

void main()
{

    Student s1 = Student("test","test");
    Student s2 = Student("test");
    Student s3 = Student.a("test2");


}