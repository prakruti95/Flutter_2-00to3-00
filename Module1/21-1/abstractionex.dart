abstract class A
{
    void a()
    {
      print("A called");
    }
    void a1();
}
class B extends A
{
    void b()
    {
      print("B called");
    }

  @override
  void a1() {
    print("A1 called");
  }
  //void b1();
}
void main()
{
  B b = B();
  b.a();
  b.b();
  b.a1();
}