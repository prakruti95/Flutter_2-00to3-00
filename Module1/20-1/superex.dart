class Mycolor
{
    String color = "white";
}
class Mycolor2 extends Mycolor
{
  String color = "black";

  display()
  {
    print(color);
    print(super.color);
  }
}
void main()
{
    Mycolor2 m = Mycolor2();
    m.display();
}