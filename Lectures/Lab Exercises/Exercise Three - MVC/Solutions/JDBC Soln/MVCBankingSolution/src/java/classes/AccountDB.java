package classes;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.sql.RowSet;
import javax.sql.rowset.RowSetProvider;

/**
 *
 * @author alan.ryan
 */
public class AccountDB {
    
    static RowSet  rowSet; 
    
    public static void connectToDB() {
        try {
            rowSet = RowSetProvider.newFactory().createJdbcRowSet();  
            Class.forName("com.mysql.jdbc.Driver");
            rowSet.setUrl("jdbc:mysql://localhost:3306/bankofmunster");
            rowSet.setUsername("root");
            rowSet.setPassword("");
        }//end try 
        catch (SQLException ex) {
            Logger.getLogger(AccountDB.class.getName()).log(Level.SEVERE, null, ex);
        }//end catch
        catch (ClassNotFoundException nffe) {
                Logger.getLogger(AccountDB.class.getName()).log(Level.SEVERE, null, nffe);
        }//end catch   
    }//end connectToDB() 
    
    public static void disconnectFromDB() {
        try {
            rowSet.close();
        }//end try
        catch (SQLException ex) {
             Logger.getLogger(AccountDB.class.getName()).log(Level.SEVERE, null, ex);
        }//end catch
    }//end disconnectFromDB
    
    public static ArrayList<Account> getAllAccounts() {
       ArrayList<Account> list = new ArrayList<Account>();
       
       try {
            
            rowSet.setCommand("SELECT * FROM accounts");
            rowSet.execute();
            
            if (!rowSet.next())
                return null;
            
            else {
            
                rowSet.beforeFirst();
            
                while (rowSet.next()) {
                
                    list.add(new Account(rowSet.getInt("AccountNumber"), rowSet.getString("FirstName"), rowSet.getString("LastName"), rowSet.getString("SortCode"), rowSet.getDouble("Balance")));
                
                }//end while
                
            }//end else
        
       } //end try
        
        catch (SQLException ex) {
            Logger.getLogger(AccountDB.class.getName()).log(Level.SEVERE, null, ex);
        }//end catch
        
        return list;
        
    }//end getAllAccounts()
    
    public static Account getAccountByID(int id) {
        
        
        try {
            rowSet.setCommand("SELECT * FROM accounts where AccountNumber = ?");
            rowSet.setInt(1, id);
            rowSet.execute();
            
            if (rowSet.next()) 
                
                return new Account(rowSet.getInt("AccountNumber"), rowSet.getString("FirstName"), rowSet.getString("LastName"), rowSet.getString("SortCode"), rowSet.getDouble("Balance"));
          
            else 
                return null;
        } //end try
        
        catch (SQLException ex) {
            Logger.getLogger(AccountDB.class.getName()).log(Level.SEVERE, null, ex);
        }//end catch
        
        return null;
        
    }//end getAccountByID
    
    
    public static void deleteAccountByID(int id) {
        
        //do deletion based on id
        
    }//end deleteAccountByID()
    
    public static void insertAccount(Account account) {
        
        //insert account object
    
    }//end insertAccount()
    
    
    public static void updateAccount(Account account) {
        
        //update account object
        
    }//end updateAccount()

}//end class AccountDB