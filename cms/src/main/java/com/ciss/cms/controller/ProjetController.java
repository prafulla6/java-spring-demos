package com.ciss.cms.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.ciss.cms.model.NewFlatDetailsBean;
import com.ciss.cms.model.NewProjectBean;
import com.ciss.cms.model.PaymentScheduleBean;
import com.ciss.cms.model.PurchaserBean;
import com.ciss.cms.model.WingDetailsBean;
import com.ciss.cms.service.NewProjectService;
@Controller
public class ProjetController {

@Autowired	
NewProjectService newProjectService;	
	
@GetMapping("/projectType")
public String showProjectType() {
	return"ProjectType";
	
}


@GetMapping("/projectDetails")
	public String newProjectPage()
	{
		return "newProjectDetails";
	}
	
	@GetMapping("/WingDetails")
	public String showWingDetails()
	{
		return "WingDetails";
	}
	
	
	@PostMapping("/addProject")
	public ModelAndView addProject(HttpServletRequest request,NewProjectBean project)
	{
		ModelAndView model=new ModelAndView();
		//Boolean result=purchaserService.insertPurchaser(purchaser);
		
		//save into session for future insert
		
		
		HttpSession session=request.getSession(false);
		
		session.setAttribute("projectDetails", project);
		
		
		model.setViewName("redirect:/WingDetails");
		return model;
	
	
	
	
	}
//========================================add wing details=========================================================================
	
	@PostMapping("/addWingDetails")
	public ModelAndView addWing(HttpServletRequest request,WingDetailsBean wing)
	{
		ModelAndView model=new ModelAndView();
		//Boolean result=purchaserService.insertPurchaser(purchaser);
		
		//save into session for future insert
		
		
		HttpSession session=request.getSession(false);
		
		session.setAttribute("wingDetails", wing);
		
		
		model.setViewName("redirect:/flatDetails");
		return model;
	
	
	
	}
	
	
	@GetMapping("/flatDetails")
	public String flatDetailsPage()
	{
		return "flatDetails";
	}
	@PostMapping("addFlatDetails")
	public ModelAndView flatDetails(HttpServletRequest request,NewFlatDetailsBean flatDetails)
	{
		ModelAndView model=new ModelAndView();
		
		HttpSession session=request.getSession(false);
		
		NewProjectBean project=(NewProjectBean)session.getAttribute("projectDetails");
		WingDetailsBean wing=(WingDetailsBean)session.getAttribute("wingDetails");
		//project.setFlatDetails(flatDetails);
		
		boolean result=newProjectService.insertProjectDetails(project);
		boolean result2=newProjectService.insertWingDetails(wing,project.getPname());
		boolean result1=newProjectService.addFlatDetails(flatDetails,project.getPname());
		
		
		if(result1) {
			session.removeAttribute("projectDetails");
			model.setViewName("redirect:/home");
			System.out.println("if");
		}else {
			model.setViewName("flatDetails");
			System.out.println("else");
		}
		
		
		return model;
	}
	
//======================================Show project  Details===================================================================
		
		

	@RequestMapping("viewProjectDetails")
	public String showProjectDetails(HttpServletRequest request)
	{
		request.setAttribute("project", newProjectService.showProjectDetails());
		return "viewProjectDetails";
	}
	

			

	
//=====================================Show Wing Details=======================================================================


	@RequestMapping("showWingDetails")
	public String showWingDetails(HttpServletRequest request,@RequestParam String projectName)
	{
		request.setAttribute("wingDetails", newProjectService.showWingDetails(projectName));
		return "viewWingDetails";
	}
	
//=====================================Show flat Details=======================================================================


		@RequestMapping("showFlatDetails")
		public String showFlatDetails(HttpServletRequest request,@RequestParam String projectName)
		{
			request.setAttribute("flatDetails", newProjectService.showFlatDetails(projectName));
			return "viewFlatDetails";
		}
	
}
	