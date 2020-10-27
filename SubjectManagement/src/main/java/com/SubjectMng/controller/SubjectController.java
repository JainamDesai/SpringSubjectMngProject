package com.SubjectMng.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

import java.util.*;

import javax.servlet.http.HttpServletRequest;

import com.SubjectMng.Dao.SubjectDao;
import com.SubjectMng.model.Subject;

@Controller
public class SubjectController {
	@Autowired
	private SubjectDao subdao;
	@RequestMapping("/")
	public RedirectView getStartPage(Model m){
		
		RedirectView rd = new RedirectView();
		rd.setUrl("viewAllSubject");
		return rd;		
	}
	@RequestMapping("/home")
	public String getHome(Model m){
		m.addAttribute("title","Subject Home Page");
		return "home";
	}
	@RequestMapping("/addSubject")
    public String addSubjectPage(Model m){
		m.addAttribute("title","Add Subject Form");
		return "add_Subject";	
	}
	@RequestMapping(value="/saveSubject",method=RequestMethod.POST)
	public String getSaveSubject(@ModelAttribute Subject sub)
	{
		subdao.createSubject(sub);
		return "successMsg";
	}
	@RequestMapping("/deleteSubject/{id}")
	public RedirectView deleteSubject(@PathVariable("id") int id,HttpServletRequest request){
		this.subdao.deleteSubject(id);
		RedirectView rd = new RedirectView();
		rd.setUrl(request.getContextPath()+"/viewAllSubject");
		return rd;
	}
	@RequestMapping("/viewAllSubject")
	public ModelAndView getAllSubject(){
		ModelAndView mv = new ModelAndView();
		List<Subject> li =this.subdao.getListSubjects();
		mv.addObject("subject",li);
		mv.addObject("title","Show All Subjects");
		mv.setViewName("ShowAllBooks");
		return mv;
	}
	@RequestMapping("/updateSub/{id}")
	public String getUpdateSubject(@PathVariable("id") int id,Model m){
		Subject sub = this.subdao.getSub(id);
		m.addAttribute("subject",sub);
		return "updateSubject";
	}
	@RequestMapping("/updateSubject")
	public String getUpdate(){
		return "updateSubject";
	}
	
}
