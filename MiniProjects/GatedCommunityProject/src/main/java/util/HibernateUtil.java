package util;

import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import pojo.Complaints;
import pojo.Residents;

public class HibernateUtil {
    private HibernateUtil(){}
    private static SessionFactory sessionFactory;
    public static SessionFactory getSessionFactory(){
        if (sessionFactory == null) {
                Configuration cfg = new Configuration();
                cfg.configure();
                cfg.addAnnotatedClass(Residents.class);
                cfg.addAnnotatedClass(Complaints.class);
                sessionFactory = cfg.buildSessionFactory();

        }
        return sessionFactory;
    }
}
