package app.dao;

import app.utils.HibernateUtil;
import org.hibernate.Session;

import java.util.List;

public class DaoImnl {

    public List<PhrasesEntity> getAll() {

        Session session = HibernateUtil.getSessionFactory().openSession();
        session.beginTransaction();

        List<PhrasesEntity> phlist = session.createQuery("from PhrasesEntity").list();

        session.getTransaction().commit();
        session.close();

        HibernateUtil.shutdown();

        System.out.println("Data displayed");

        return phlist;
    }
}
