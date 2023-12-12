package hcmute.DAO;

import java.util.List;

import hcmute.entity.Blog;

public interface IBlogDao {
	List<Blog> findAllBlogDesTime();
}
