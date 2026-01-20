class Emp
{
     var _id;
     var _name;

     set id(value)
     {
       _id = value;
     }

    get id => _id;



    get name => _name;

    set name(value) {
        _name = value;
    }
}
void main()
{
    Emp e1 = Emp();

    //set
    e1.id=101;
    e1.name="abcd";

    //get
    print(e1.id);
    print(e1.name);
}