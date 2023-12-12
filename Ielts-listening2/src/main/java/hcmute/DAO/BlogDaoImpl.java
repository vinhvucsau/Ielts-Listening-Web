package hcmute.DAO;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;

import JPAConfig.JPAConfig;
import hcmute.entity.Blog;

public class BlogDaoImpl extends AbstractDao<Blog> implements IBlogDao {

	public BlogDaoImpl() {
		super(Blog.class);
		// TODO Auto-generated constructor stub
	}

	public List<Blog> Find3blog(String id) {
		EntityManager en = JPAConfig.getEntityManager();
		TypedQuery<Blog> q = null;

		try {
			String jpql = "SELECT b FROM Blog b WHERE b.blogId <> :excludedBlogId ORDER BY b.createdDate DESC";
			q = en.createQuery(jpql, Blog.class).setParameter("excludedBlogId", id).setMaxResults(3);
			return q.getResultList();
		} catch (Exception e) {
			e.printStackTrace();
			throw e;
		} finally {
			if (en != null && en.isOpen()) {
				en.close();
			}
		}
	}
	
	public List<Blog> findAllBlogDesTime(){
			EntityManager enma = JPAConfig.getEntityManager();
		    try {
		        String jpql = "SELECT b FROM Blog b WHERE b.status = 1 ORDER BY b.createdDate DESC";
		        TypedQuery<Blog> query = enma.createQuery(jpql, Blog.class);
		        return query.getResultList();
		    } finally {
		        if (enma != null) {
		            enma.close();
		        }
		    }
		}

}
