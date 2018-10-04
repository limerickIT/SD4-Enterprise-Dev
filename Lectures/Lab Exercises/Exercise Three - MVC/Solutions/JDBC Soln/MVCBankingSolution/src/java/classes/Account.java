package classes;

/**
 *
 * @author Alan.Ryan
 */
public class Account {
    
    private int accountNumber;
    private String firstName;
    private String lastName;
    private String sortCode;
    private double balance;

    public Account() {
    }

    public Account(int accountNumber, String firstName, String lastName, String sortCode, double balance) {
        this.accountNumber = accountNumber;
        this.firstName = firstName;
        this.lastName = lastName;
        this.sortCode = sortCode;
        this.balance = balance;
    }

    /**
     * @return the accountNumber
     */
    public int getAccountNumber() {
        return accountNumber;
    }

    /**
     * @param accountNumber the accountNumber to set
     */
    public void setAccountNumber(int accountNumber) {
        this.accountNumber = accountNumber;
    }

    /**
     * @return the firstName
     */
    public String getFirstName() {
        return firstName;
    }

    /**
     * @param firstName the firstName to set
     */
    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    /**
     * @return the lastName
     */
    public String getLastName() {
        return lastName;
    }

    /**
     * @param lastName the lastName to set
     */
    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    /**
     * @return the sortCode
     */
    public String getSortCode() {
        return sortCode;
    }

    /**
     * @param sortCode the sortCode to set
     */
    public void setSortCode(String sortCode) {
        this.sortCode = sortCode;
    }

    /**
     * @return the balance
     */
    public double getBalance() {
        return balance;
    }

    /**
     * @param balance the balance to set
     */
    public void setBalance(double balance) {
        this.balance = balance;
    }

}//end class