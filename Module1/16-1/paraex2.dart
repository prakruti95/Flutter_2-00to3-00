details(var name,{var surname,var email})
{
  if(name!=null)
  {
    print("Your name is $name");
  }
  if(surname!=null)
  {
    print("Your surname is $surname");
  }
  if(email!=null)
  {
    print("Your email is $email");
  }

}

void main()
{
    details("aayush",surname: "xyz");
    details("hetvi",surname: "xyz",email: "h@gmail.com");

}