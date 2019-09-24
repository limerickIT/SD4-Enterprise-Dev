package lit.sd4.source.model;

import java.util.ArrayList;

/**
 *
 * @author Alan.Ryan
 */
public class TitleDB {
 
    public static ArrayList<Title> getAlltitles() {
        
       //put code to query Titles table in Books DB
       //Create a Title object for each row
       //add each objet to the list
       
       //consider adding a method to connect/disconnect to/from the DB
       
        Title t1 = new Title("12345", "Java How To Code", 2, 2019, 1, 30.99);
        Title t2 = new Title("54321", "C# How To Code", 1, 2019, 1, 30.99);
        
        
        ArrayList<Title> list = new ArrayList();
        
        list.add(t1);
        list.add(t2);
        
        return list;
    }
}
