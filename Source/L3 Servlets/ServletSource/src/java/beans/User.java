package beans;

import java.io.Serializable;

public class User implements Serializable
{
    private String firstName;
    private String lastName;
    private String emailAddress;
    
    public User()
    {
        firstName = "";
        lastName = "";
        emailAddress = "";
    }
    
    public User(String first, String last, String email)
    {
        firstName = first;
        lastName = last;
        emailAddress = email;
    }
    
    public void setFirstName(String f)
    {
        firstName = f;
    }
    public String getFirstName()
    { 
        return firstName; 
    }
    
    public void setLastName(String l)
    {
        lastName = l;
    }

    public String getLastName()
    { 
        return lastName; 
    }
    
    public void setEmailAddress(String e)
    {
        emailAddress = e;
    }

    public String getEmailAddress()
    { 
        return emailAddress; 
    }
}