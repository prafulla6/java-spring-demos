package com.ciss.cms.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.ciss.cms.model.InvoiceBean;
import com.ciss.cms.model.VendorBean;

@Service
public interface VendorService 
{
	public abstract boolean insertVendor(VendorBean vendor);
	public abstract boolean insertInvoice(InvoiceBean invoice);
	public abstract List<VendorBean> showVendor();
	public abstract List<InvoiceBean> showInvoice(int invoiceId);
}
