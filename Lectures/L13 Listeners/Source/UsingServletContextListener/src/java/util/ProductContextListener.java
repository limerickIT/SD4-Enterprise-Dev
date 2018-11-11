package util;

import business.Product;
import data.ProductIO;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.GregorianCalendar;
import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

public class ProductContextListener implements ServletContextListener {

    public void contextInitialized(ServletContextEvent event) {
        
        ServletContext sc = event.getServletContext();  
        
        // initialize the customer service email address that's used throughout the web site
        String custServEmail = sc.getInitParameter("custServEmail");
        sc.setAttribute("custServEmail", custServEmail);

        // initialize the current year that's used in the copyright notice
        GregorianCalendar currentDate = new GregorianCalendar();
        int currentYear = currentDate.get(Calendar.YEAR);
        sc.setAttribute("currentYear", currentYear);
        
        // initialize the path for the products text file
        String productsPath = sc.getRealPath("WEB-INF/products.txt");
        sc.setAttribute("productsPath", productsPath);
        
        // initialize the list of products
        ArrayList<Product> products = new ArrayList<Product>();      
        products = ProductIO.getProducts(productsPath);
        sc.setAttribute("products", products);

    }//end method contextInitialized

    public void contextDestroyed(ServletContextEvent sce) {
        //no cleanup needed
    }//end method contextDestroyed
}//end class ProductContextListener
