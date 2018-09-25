package beans;

/**
 * 
 * @author Alan.Ryan
 */
public class Customer {

    private String name;
    private String address;
    private String city;
    private String country;
    private String phone;
    private String email;
    private String gender;
    private String comments;
    private String[] hearOptions;
    
    /**
     * Default constructor
     */
    public Customer() {
        name = "";
        address = "";
        city = "";
        country = "";
        phone = "";
        email = "";
        gender = "";
        comments = "";
    }
    
    
   /**
     * Constructor to initialise all the instance variables of the object
     * @param name the name to set
     * @param city the city to set
     * @param address the address to set 
     * @param hearOptions the hearOptions to set
     * @param country the country to set
     * @param phone the phone to set
     * @param email the email to set
     * @param gender the gender to set
     * @param comments  the comments to set
     */
    public Customer(String name, String address, String city, String country, String phone, String email, String gender, String comments, String[] hearOptions) {
        this.name = name;
        this.address = address;
        this.city = city;
        this.country = country;
        this.phone = phone;
        this.email = email;
        this.gender = gender;
        this.comments = comments;
        this.hearOptions = hearOptions;
    }
    
    
    /**
     * @return the name
     */
    public String getName() {
        return name;
    }

    /**
     * @param name the name to set
     */
    public void setName(String name) {
        this.name = name;
    }

    /**
     * @return the address
     */
    public String getAddress() {
        return address;
    }

    /**
     * @param address the address to set
     */
    public void setAddress(String address) {
        this.address = address;
    }

    /**
     * @return the city
     */
    public String getCity() {
        return city;
    }

    /**
     * @param city the city to set
     */
    public void setCity(String city) {
        this.city = city;
    }

    /**
     * @return the country
     */
    public String getCountry() {
        return country;
    }

    /**
     * @param country the country to set
     */
    public void setCountry(String country) {
        this.country = country;
    }

    /**
     * @return the phone
     */
    public String getPhone() {
        return phone;
    }

    /**
     * @param phone the phone to set
     */
    public void setPhone(String phone) {
        this.phone = phone;
    }

    /**
     * @return the email
     */
    public String getEmail() {
        return email;
    }

    /**
     * @param email the email to set
     */
    public void setEmail(String email) {
        this.email = email;
    }

    /**
     * @return the gender
     */
    public String getGender() {
        return gender;
    }

    /**
     * @param gender the gender to set
     */
    public void setGender(String gender) {
        this.gender = gender;
    }

 
    /**
     * @return the comments
     */
    public String getComments() {
        return comments;
    }

    /**
     * @param comments the comments to set
     */
    public void setComments(String comments) {
        this.comments = comments;
    }

    /**
     * @return the hearOptions
     */
   

    /**
     * @param hearOptions the hearOptions to set
     */
    public void setHearOptions(String[] hearOptions) {
      this.hearOptions = hearOptions;
            
    }
    
    /**
     * @return the hearOptions
     */
    public String[] getHearOptions() {
        return this.hearOptions;
    }
    
     /**
     * @return the hearOptions as text separated by a space
     */
    public String getHearOptionsAsString() {
        
        String options = "";
        
         if (hearOptions.length == 0)
           options = "You did not select any options";
         else {
             //iterating over options in array
            for (int i =0; i < hearOptions.length; i++) 
                options += hearOptions[i] + " ";
         }//end else
         
         return options;
             
    }
    
    
    
    
}
