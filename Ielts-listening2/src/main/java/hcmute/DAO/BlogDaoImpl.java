package hcmute.DAO;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;

import JPAConfig.JPAConfig;
import hcmute.entity.Blog;

public class BlogDaoImpl extends AbstractDao<Blog> implements IBlogDao{

	public BlogDaoImpl() {
		super(Blog.class);
		// TODO Auto-generated constructor stub
	}

	public List<Blog> Find3blog(String id) {
		EntityManager en = JPAConfig.getEntityManager();
		String jpql = "SELECT b FROM Blog b WHERE b.blogId <> :excludedBlogId ORDER BY b.createdDate DESC";
		TypedQuery<Blog> q = en.createQuery(jpql, Blog.class)
		        .setParameter("excludedBlogId", id)
		        .setMaxResults(3);
		return q.getResultList();
		
	}

}
