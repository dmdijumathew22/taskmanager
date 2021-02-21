package com.hcl.model;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;
@Repository
public interface TaskRepo extends CrudRepository<Tasks, Integer> {
	
	//@Query("select t from TASKS  t where user.id= 1")
	List <Tasks>findAllByUserId(int userId);

}
