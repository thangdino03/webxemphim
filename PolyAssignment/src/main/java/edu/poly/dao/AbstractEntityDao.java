package edu.poly.dao;

import java.util.List;


import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.Query;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Root;

public abstract class AbstractEntityDao<T> { // T là Type
	private Class<T> entityClass;

	public AbstractEntityDao(Class<T> cls) {
		this.entityClass = cls;
	}

	public void insert(T entity) {
		EntityManager em = JpaUtils.getEntityManager();

		EntityTransaction trans = em.getTransaction();

		try {
			trans.begin();

			em.persist(entity);

			trans.commit();
		} catch (Exception e) {
			e.printStackTrace();
			trans.rollback();
			throw e;
		} finally {
			em.close();
		}

	}
	
	public void update(T entity) {
		EntityManager em = JpaUtils.getEntityManager();

		EntityTransaction trans = em.getTransaction();

		try {
			trans.begin();

			em.merge(entity); //merge cho phép thay đổi cac giá trị

			trans.commit();
		} catch (Exception e) {
			e.printStackTrace();
			trans.rollback();
			throw e;
		} finally {
			em.close();
		}

	}
	
	public void delete(Object id) {
		EntityManager em = JpaUtils.getEntityManager();

		EntityTransaction trans = em.getTransaction();

		try {
			trans.begin();

			T entity = em.find(entityClass, id);
			em.remove(entity);
			
			trans.commit();
		} catch (Exception e) {
			e.printStackTrace();
			trans.rollback();
			throw e;
		} finally {
			em.close();
		}

	}
	
	// tìm kiếm theo id
	public T findById(Object id) { //T là 1 cái kiểu dữ liệu nào đó
		EntityManager em = JpaUtils.getEntityManager();

//		EntityTransaction trans = em.getTransaction(); thực hiện truy vấn ko cần Transaction 
		
		T entity = em.find(entityClass, id);
		
		return entity;

	}
	
	//Find all
	public List<T> findAll() { //T là 1 cái kiểu dữ liệu nào đó
		EntityManager em = JpaUtils.getEntityManager();
		
		try {
			CriteriaQuery cq = em.getCriteriaBuilder().createQuery();
			cq.select(cq.from(entityClass));
			return em.createQuery(cq).getResultList();
		} finally {
			em.close();
		}
	}
	
	//đếm tổng số entity hiện có
		public Long count() { //T là 1 cái kiểu dữ liệu nào đó
			EntityManager em = JpaUtils.getEntityManager();
			try {
				CriteriaQuery cq = em.getCriteriaBuilder().createQuery();
				
				Root<T> rt = cq.from(entityClass);
				cq.select(em.getCriteriaBuilder().count(rt));
				Query q = em.createQuery(cq);
				return (Long) q.getSingleResult();
			} finally {
				em.close();
			}
		}
		
		
		//Find theo dạng phân trang, trả về số phần tử hiện có trong trang
		public List<T> findAll(boolean all, int firstResult, int maxResult ) { //T là 1 cái kiểu dữ liệu nào đó
			EntityManager em = JpaUtils.getEntityManager();
			try {
				CriteriaQuery cq = em.getCriteriaBuilder().createQuery();
				cq.select(cq.from(entityClass));
				Query q = em.createQuery(cq);
				if(!all) {
					q.setFirstResult(firstResult);
					q.setMaxResults(maxResult);
				}
				return q.getResultList();
			} finally {
				em.close();
			}
		}

}
