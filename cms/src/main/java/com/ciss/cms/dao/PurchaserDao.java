package com.ciss.cms.dao;

import java.util.List;

import com.ciss.cms.model.PaymentScheduleBean;
import com.ciss.cms.model.PurchaserBean;

public interface PurchaserDao 
{
	public abstract boolean insertPurchaser(PurchaserBean purchaser);
	public abstract boolean insertPaymentSchedule(PaymentScheduleBean payment);
	public abstract List<PurchaserBean> viewPurchaser();
	public abstract List<PaymentScheduleBean> viewPaymentSchedule(int id);
}
