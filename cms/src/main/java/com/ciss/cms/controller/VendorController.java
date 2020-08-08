package com.ciss.cms.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.ciss.cms.model.InvoiceBean;
import com.ciss.cms.model.PurchaserBean;
import com.ciss.cms.model.VendorBean;
import com.ciss.cms.service.VendorService;

@Controller
public class VendorController {
	@Autowired
	private VendorService vendorService;
	
	@GetMapping("/vendorDetails")
	public String showVendorPage() {
		return "vendorDetails";
	}

	@PostMapping("/addVendor")
	public ModelAndView showInvoicePage(HttpServletRequest request, VendorBean vendor) {
		ModelAndView model = new ModelAndView();
		// Boolean result=purchaserService.insertPurchaser(purchaser);

		// save into session for future insert

		HttpSession session = request.getSession(false);

		session.setAttribute("vendorDet", vendor);
		boolean result = vendorService.insertVendor(vendor);
		model.setViewName("redirect:/invoiceDetails");
		return model;
	}

	@PostMapping("/addInvoice")
	public ModelAndView addInvoiceDetails(HttpServletRequest request, InvoiceBean invoice) {
		ModelAndView model = new ModelAndView();

		HttpSession session = request.getSession(false);

		//VendorBean vendor = (VendorBean) session.getAttribute("vendorDet");

		//vendor.setPaymentSchedule(invoice);

		//boolean result = vendorService.insertVendor(vendor);
		boolean result2 = vendorService.insertInvoice(invoice);

		if (result2) {
			session.removeAttribute("vendorDet");
			model.setViewName("redirect:/home");
		} else {
			model.setViewName("invoiceDetails");
		}

		return model;
	}
	
	@GetMapping("/invoiceDetails")
	public String gotoInvoicePage()
	{
		return "invoiceDetails";
	}
	
	@GetMapping("/viewVendorDetails")
	public ModelAndView viewVendorDetails(HttpServletRequest request)
	{
		ModelAndView model=new ModelAndView();
		request.setAttribute("vendorDetails",vendorService.showVendor());
		model.setViewName("viewVendorDetails");
		return model;
	}
	
	@GetMapping("/viewInvoiceDetails")
	public ModelAndView viewInvoiceDetails(HttpServletRequest request,@RequestParam int invoiceId)
	{
		ModelAndView model=new ModelAndView();
		request.setAttribute("invoiceDetails",vendorService.showInvoice(invoiceId));
		model.setViewName("viewInvoiceDetails");
		return model;
	}

}
