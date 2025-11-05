package dao;

import org.hibernate.Session;
import org.hibernate.Transaction;
import pojo.Residents;
import util.HibernateUtil;

public class ResidentDao {
    public Residents getResident(String email, String password){
        try(Session session=HibernateUtil.getSessionFactory().openSession()) {
            return (Residents) session.createQuery("From Residents where residentEmail=:residentEmail and residentPassword=:residentPassword")
                    .setParameter("residentEmail",email)
                    .setParameter("residentPassword",password)
                    .uniqueResult();
        }catch(Exception e){
            e.printStackTrace();
            return null;
        }
    }
    public void saveResident(Residents resident){
        Transaction ts=null;
            try(Session session=HibernateUtil.getSessionFactory().openSession()){
               ts=session.beginTransaction();
               session.persist(resident);
               ts.commit();
            }catch (Exception e){
                if(ts.isActive() && ts!=null){
                    ts.rollback();
                }
                e.printStackTrace();
            }
    }
}
