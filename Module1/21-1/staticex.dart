class Tops
{
  int num=0;
  String name="";
  static String clg ="VVP";//static variable
  Tops(int num,String name)
  {
    this.num=num;
    this.name=name;
  }
  void display()
  {
      print("$name and $num and $clg");
  }
  static void change()
  {
    clg = "Atmiya";
  }
}
void main()
{
    Tops t1 = Tops(111, "abcd");
    Tops t2 = Tops(222, "pqrs");
    Tops.change();
    t1.display();
    t2.display();

}