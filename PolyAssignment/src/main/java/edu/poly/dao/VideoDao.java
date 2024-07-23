package edu.poly.dao;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;

import edu.poly.model.Video;



public class VideoDao extends AbstractEntityDao<Video> {

	public VideoDao() {
		super(Video.class);
		
	}
	
	
	
	
	
	
	
//	public void insert(Video video) {
//		EntityManager em = JpaUtils.getEntityManager();
//		
//		EntityTransaction trans = em.getTransaction();
//		
//		try {
//			trans.begin();
//			
//			em.persist(video);
//			
//			
//			trans.commit();
//		} catch (Exception ex) {
//			ex.printStackTrace();
//			trans.rollback();
//		}finally {
//			em.close();
//		}
//	}
}
