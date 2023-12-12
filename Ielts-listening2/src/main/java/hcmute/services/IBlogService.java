package hcmute.services;

import java.util.List;

import hcmute.entity.Blog;

public interface IBlogService {
	List<Blog> findAll();
	Blog findOneById(String id);
	void insert(Blog blog);
	void update(Blog blog);
	void delete(String id) throws Exception;
	List<Blog> Find3blog(String id);
	List<Blog> findAll(boolean all, int firstResult, int maxResult);
}
