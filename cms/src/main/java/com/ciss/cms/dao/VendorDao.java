package com.ciss.cms.dao;

import java.util.List;

import com.ciss.cms.model.InvoiceBean;
import com.ciss.cms.model.VendorBean;

public interface VendorDao 
{
	public abstract boolean insertVendor(VendorBean vendor);
	public abstract boolean insertInvoice(InvoiceBean invoice);
	public abstract List<VendorBean> showVendor();
	public abstract List<InvoiceBean> showInvoice(int invoiceId);
	

}
