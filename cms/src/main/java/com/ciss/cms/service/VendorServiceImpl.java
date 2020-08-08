package com.ciss.cms.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ciss.cms.dao.VendorDao;
import com.ciss.cms.model.InvoiceBean;
import com.ciss.cms.model.VendorBean;

@Service
public class VendorServiceImpl implements VendorService
{
	@Autowired
	VendorDao vendorDao;

	
	@Override
	public boolean insertVendor(VendorBean vendor) {
		boolean result=vendorDao.insertVendor(vendor);
		
		return result;
	}

	@Override
	public boolean insertInvoice(InvoiceBean invoice) {
		boolean result=vendorDao.insertInvoice(invoice);
		
		return result;
	}

	@Override
	public List<VendorBean> showVendor() {
		List<VendorBean> vendor=new ArrayList<VendorBean>();
		vendor=vendorDao.showVendor();
		return vendor;
		
	}

	@Override
	public List<InvoiceBean> showInvoice(int invoiceId) {
		List<InvoiceBean> invoice=new ArrayList<InvoiceBean>();
		invoice=vendorDao.showInvoice(invoiceId);
		return invoice;
	}
	

}
