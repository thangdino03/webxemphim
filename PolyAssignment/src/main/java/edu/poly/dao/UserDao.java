package edu.poly.dao;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.TypedQuery;

import edu.poly.model.User;

public class UserDao extends AbstractEntityDao<User> {

	public UserDao() {
		super(User.class);
		
	}
	
	public void changePassword(String username, String oldPassword, String newPassword) throws Exception {
		EntityManager em = JpaUtils.getEntityManager();
		
		EntityTransaction trans = em.getTransaction();
		
		String jpql = "select u from User u where u.username = :username and u.password = :password";
		try {
			trans.begin();
			TypedQuery<User> query = em.createQuery(jpql, User.class);
			query.setParameter("username", username);
			query.setParameter("password", oldPassword);
			User user = query.getSingleResult();
			if (user ==null) {
				throw new Exception("Current password or Username are incorrect");
			}
			user.setPassword(newPassword);
			em.merge(user);
			
			
			trans.commit();
		} catch (Exception e) {
			trans.rollback();
			throw e;
		}finally {
			em.close();
		}
	}
	
	
	public User findByUsernameAndEmail(String username, String email) {
	    EntityManager em = JpaUtils.getEntityManager();
	    
	    String jpql = "SELECT u FROM User u WHERE u.username = :username AND u.email = :email";
	    TypedQuery<User> query = em.createQuery(jpql, User.class);
	    query.setParameter("username", username);
	    query.setParameter("email", email);
	    
	    User user = null;
	    try {
	        user = query.getSingleResult();
	    } catch (Exception e) {
	        // Không tìm thấy user nào với username và email cung cấp
	    	throw e;
	    } finally {
	        em.close();
	    }
	    
	    return user;
	}
	
	
	
	
	
//	public void insert(User user) {
//		EntityManager em = JpaUtils.getEntityManager();
//		
//		EntityTransaction trans = em.getTransaction();
//		
//		try {
//			trans.begin();
//			
//			em.persist(user);
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
