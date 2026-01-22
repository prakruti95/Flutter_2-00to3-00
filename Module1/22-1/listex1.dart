void main()
{
  //ArrayList
  List tech =
  [
       "Flutter",
       "Java",
       "Android"
  ];

  List tech2 =
  [
    "Designing",
    "Dm",
    "SEO"
  ];

  //print(tech[1]);

  tech.add("Testing");
  tech.addAll(tech2);
  tech.remove("Testing");
  tech.removeAt(3);
  tech.removeLast();
  tech.clear();
  for(var item in tech)
    {
      print(item);
    }
}