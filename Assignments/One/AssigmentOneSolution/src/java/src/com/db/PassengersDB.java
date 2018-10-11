package src.com.db;

import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.TypedQuery;

public class PassengersDB {

    public static Passengers getPassengersByCode(String code) {

        EntityManager em = DBUtil.getEmf().createEntityManager();

        return em.find(Passengers.class, code);

    }
    
    public static void editPassengers(Passengers p) {
        EntityManager em = DBUtil.getEmf().createEntityManager();
        
        EntityTransaction trans = em.getTransaction();
        
        try {
            trans.begin();
            em.merge(p);
            trans.commit();
        } catch (Exception ex) {
            System.out.println(ex);
        }
         
            em.close();
    }
    
    public static List<Passengers> getAllPassengers() {
        EntityManager em = DBUtil.getEmf().createEntityManager();

        TypedQuery<Passengers> tq = em.createNamedQuery("Passengers.findAll", Passengers.class);

        List<Passengers> pList;
        try {
            pList = tq.getResultList();
        } finally {
            em.close();
        }
        
        return pList;
    }
    
    public static void removePassengers(Passengers P) {
        //do delete code
    }
    
    public static void addPassengers(Passengers P) {
        //do insert code
    }
    
    
}
