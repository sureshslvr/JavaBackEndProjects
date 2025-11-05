package dao;

import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.query.SelectionQuery;
import pojo.Complaints;
import pojo.Residents;
import util.HibernateUtil;

import java.util.List;

public class ComplaintDao {


    public List<Complaints> getResidentComplaints(Integer residentId ){
        try(Session session=HibernateUtil.getSessionFactory().openSession()) {
            SelectionQuery<Complaints> query = session.createSelectionQuery("FROM Complaints WHERE userId = ?1 AND status IN (?2, ?3)",Complaints.class);
            query.setParameter(1,residentId);
            query.setParameter(2,"pending");
            query.setParameter(3,"In_Progress");
            return query.list();

        }catch(Exception e){
            e.printStackTrace();
            return null;
        }
    }
    public List<Complaints> getAllComplaints(){
        try(Session session=HibernateUtil.getSessionFactory().openSession()) {
            SelectionQuery<Complaints> query = session.createSelectionQuery("FROM Complaints",Complaints.class);
            return query.list();

        }catch(Exception e){
            e.printStackTrace();
            return null;
        }
    }
    public List<Complaints> getComplaintsHistory(Integer residentId ){
        try(Session session=HibernateUtil.getSessionFactory().openSession()) {
            SelectionQuery<Complaints> query = session.createSelectionQuery("From Complaints where userId=?1 AND status=?2",Complaints.class);
            query.setParameter(1,residentId);
            query.setParameter(2,"resolved");
            return query.list();

        }catch(Exception e){
            e.printStackTrace();
            return null;
        }
    }

    public void saveComplaint(Complaints complaint){
        Transaction ts=null;
        try(Session session= HibernateUtil.getSessionFactory().openSession()){
            ts=session.beginTransaction();
            session.persist(complaint);
            ts.commit();
        }catch (Exception e){
            if(ts.isActive() && ts!=null){
                ts.rollback();
            }
            e.printStackTrace();
        }
    }
    public void updateComplaint(Complaints complaint){
        Transaction ts=null;
        try(Session session= HibernateUtil.getSessionFactory().openSession()){
            ts=session.beginTransaction();
            session.merge(complaint);
            ts.commit();
        }catch (Exception e){
            if(ts.isActive() && ts!=null){
                ts.rollback();
            }
            e.printStackTrace();
        }
    }
    public void deleteComplaint(Complaints complaint){
        Transaction ts=null;
        try(Session session= HibernateUtil.getSessionFactory().openSession()){
            ts=session.beginTransaction();
            session.remove(complaint);
            ts.commit();
        }catch (Exception e){
            if(ts.isActive() && ts!=null){
                ts.rollback();
            }
            e.printStackTrace();
        }
    }

    public Complaints getComplaintByID(int complaintId){
        try(Session session=HibernateUtil.getSessionFactory().openSession()) {
            SelectionQuery<Complaints> query = session.createSelectionQuery("FROM Complaints WHERE compliantId = ?1",Complaints.class);
            return query.setParameter(1, complaintId).uniqueResult();

        }catch(Exception e){
            e.printStackTrace();
            return null;
        }
    }


}
