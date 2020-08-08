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

import com.ciss.cms.model.PaymentScheduleBean;
import com.ciss.cms.model.PurchaserBean;
import com.ciss.cms.service.PurchaserService;

@Controller
public class PurchaserController 
{
	@Autowired
	PurchaserService purchaserService;
	
	
	@GetMapping("/newPurchaser")
	public String newPurchaserPage()
	{
		return "newPurchaser";
	}
	
	
	@PostMapping("/addPurchaser")
	public ModelAndView addPuchaser(HttpServletRequest request,PurchaserBean purchaser)
	{
		ModelAndView model=new ModelAndView();
		//Boolean result=purchaserService.insertPurchaser(purchaser);
		
		//save into session for future insert
		
		
		HttpSession session=request.getSession(false);
		
		session.setAttribute("purchaserDet", purchaser);
		
		
		model.setViewName("redirect:/paymentSchedule");
		return model;
	}
	
	@GetMapping("/paymentSchedule")
	public String paymentSchedulePage()
	{
		return "paymentSchedule";
	}
	
	@PostMapping("paymentSchedule")
	public ModelAndView paymentSchedule(HttpServletRequest request,PaymentScheduleBean paymentSch)
	{
		ModelAndView model=new ModelAndView();
		
		HttpSession session=request.getSession(false);
		
		PurchaserBean purchaser=(PurchaserBean)session.getAttribute("purchaserDet");
		
		
		purchaser.setPaymentSchedule(paymentSch);
		
		boolean result=purchaserService.insertPurchaser(purchaser);
		boolean result2=purchaserService.insertPaymentSchedule(paymentSch);
		
		
		if(result2) {
			session.removeAttribute("purchaserDet");
			model.setViewName("redirect:/home");	
		}else {
			model.setViewName("paymentSchedule");
		}
		
		
		
		
		return model;
	}
	
	@GetMapping("/viewPurchaser")
	public ModelAndView showPurchaser(HttpServletRequest request)
	{
		ModelAndView model=new ModelAndView();
		request.setAttribute("purchaserDetails", purchaserService.viewPurchaser());
		model.setViewName("viewPurchaserDetails");
		return model;
	}
	
	@GetMapping("/viewPaymentSchedule")
	public ModelAndView viewPaymentSchedule(HttpServletRequest request,@RequestParam int pid)
	{
		ModelAndView model=new ModelAndView();
		request.setAttribute("paymentDetails", purchaserService.viewPaymentSchedule(pid));
		model.setViewName("viewPaymentSchedule");
		return model;
		
	}
	
	

}
