/**
 * 
 */
package bootJPA.dao;

import org.springframework.data.repository.CrudRepository;

import bootJPA.bean.Task;

/**
 * @author $ Saroj Kumar Sahoo
 *
 * @Created May 25, 2017 3:59:19 PM
 */
public interface TaskRepository extends CrudRepository<Task, Integer>{
	
}
