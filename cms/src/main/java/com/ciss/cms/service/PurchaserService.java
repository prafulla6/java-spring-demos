package com.ciss.cms.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.ciss.cms.model.PaymentScheduleBean;
import com.ciss.cms.model.PurchaserBean;

@Service
public interface PurchaserService 
{
	public abstract boolean insertPurchaser(PurchaserBean purchaser);
	public abstract List<PurchaserBean> viewPurchaser();
	public abstract boolean insertPaymentSchedule(PaymentScheduleBean payment);
	public abstract List<PaymentScheduleBean> viewPaymentSchedule(int id);
}
