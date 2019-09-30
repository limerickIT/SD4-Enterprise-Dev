package lit.sd4.source.model;

import java.sql.SQLException;
import java.util.ArrayList;
import javax.sql.RowSet;
import javax.sql.rowset.RowSetProvider;

/**
 *
 * @author Alan.Ryan
 */
public class TitleDB {

    static RowSet rowSet;

    public static void connectToDB() {
        try {
            rowSet = RowSetProvider.newFactory().createJdbcRowSet();
            Class.forName("com.mysql.jdbc.Driver");
            rowSet.setUrl("jdbc:mysql://localhost:3306/books");
            rowSet.setUsername("root");
            rowSet.setPassword("");
        }//end try 
        catch (SQLException ex) {
            System.out.println(ex);
        }//end catch
        catch (ClassNotFoundException nffe) {
            System.out.println(nffe);
        }//end catch   
    }//end connectToDB() 

    public static void disconnectFromDB() {
        try {
            rowSet.close();
        }//end try
        catch (SQLException ex) {
            System.out.println(ex);
        }//end catch
    }//end disconnectFromDB

    public static ArrayList<Title> getAlltitles() {

        ArrayList<Title> list = new ArrayList();

        try {

            rowSet.setCommand("SELECT * FROM titles");
            rowSet.execute();

            if (!rowSet.next()) {
                return null;
            } else {

                rowSet.beforeFirst();

                while (rowSet.next()) {

                    list.add(new Title(rowSet.getString("ISBN"), rowSet.getString("Title"), rowSet.getInt("EditionNumber"), rowSet.getInt("YearPublished"), rowSet.getInt("PublisherID"),rowSet.getDouble("Price")));

                }//end while

            }//end else

        } //end try 
        catch (SQLException ex) {
            System.out.println(ex);
        }//end catch

        return list;


    }
}
