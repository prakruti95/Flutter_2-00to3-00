class RBI
{
    int roi()
    {
        return 0;
    }
}
class SBI extends RBI
{
    int roi()
    {
        return 7;
    }
}
class ICICI extends RBI
{
    int roi()
    {
        return 8;
    }
}
class AXIS extends RBI
{
    int roi()
    {
        return 9;
    }
}
void main()
{
    // SBI s = SBI();
    // ICICI i = ICICI();
    // AXIS a = AXIS();
    //
    // print(s.roi());
    // print(i.roi());
    // print(a.roi());

    RBI r;

    r = SBI();
    print(r.roi());
    r = ICICI();
    print(r.roi());
    r= AXIS();
    print(r.roi());


}