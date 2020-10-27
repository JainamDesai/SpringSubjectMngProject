package com.SubjectMng.Dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.SubjectMng.model.Subject;
import java.util.*;

@Repository
@Component
public class SubjectDao {
	@Autowired
	private HibernateTemplate hibernateTemplate;

	public HibernateTemplate getHibernateTemplate() {
		return hibernateTemplate;
	}
	public void setHibernateTemplate(HibernateTemplate hibernateTemplate) {
		this.hibernateTemplate = hibernateTemplate;	
	}
	@Transactional(value="transactionManager")
	public void createSubject(Subject sub){
		this.hibernateTemplate.saveOrUpdate(sub);
	}
	@Transactional(value="transactionManager")
	public void deleteSubject(int id){
		Subject sub = this.hibernateTemplate.get(Subject.class, id);
		this.hibernateTemplate.delete(sub);
	}
	public List<Subject> getListSubjects(){
		List<Subject> li = this.hibernateTemplate.loadAll(Subject.class);
		return li;
	}	
	public Subject getSub(int id){
		return this.hibernateTemplate.get(Subject.class, id);
	}
}
