class A
{
  void a()
  {
    print("A called");
  }
}
class B extends A
{
  void b()
  {
    print("B called");
  }
}
class C extends A
{
  void c()
  {
    print("C called");
  }
}
class D extends B implements C
{
  void d()
  {
    print("D called");
  }

  @override
  void c()
  {
    print("C called");
  }
}
void main()
{
  D d =D();
  d.a();
  d.b();
  d.c();
  d.d();
}