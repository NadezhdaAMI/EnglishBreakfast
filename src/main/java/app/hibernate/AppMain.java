package app.hibernate;

import app.utils.HibernateUtil;
import org.hibernate.Session;

public class AppMain {

        public static void main(String[] args) throws Exception {

            System.out.println("Hibernate tutorial");

//            DaoImnl daoImnl = new DaoImnl();
//
//            for (Object item : daoImnl.getAll()) {
//                PhrasesEntity ph = (PhrasesEntity)item;
//                System.out.println("rus: " + ph.getRus());
//            }

            Session session = HibernateUtil.getSessionFactory().openSession();
            session.beginTransaction();

            // Check database version
            String sql = "select version()";

            String result = (String) session.createNativeQuery(sql).getSingleResult();
            System.out.println("Response ^  ^ ^" + result);

            session.getTransaction().commit();
            session.close();

            HibernateUtil.shutdown();

        }

}
