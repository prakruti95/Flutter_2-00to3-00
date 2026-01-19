class Student
{
   var name;
   var email;


}
void main()
{
    Student s1 = Student();
   // Student s2 = new Student();
    //var s3 = Student();

  s1.name="test";
  s1.email="test@gmail.com";

  //String interpolation
  print("Name is : ${s1.name}");
  print("Email is : ${s1.email}");
}