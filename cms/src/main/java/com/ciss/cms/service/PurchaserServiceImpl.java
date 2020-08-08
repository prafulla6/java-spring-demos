package com.ciss.cms.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ciss.cms.dao.PurchaserDao;
import com.ciss.cms.model.PaymentScheduleBean;
import com.ciss.cms.model.PurchaserBean;

@Service
public class PurchaserServiceImpl implements PurchaserService
{

	@Autowired
	PurchaserDao purchaserDao;
	
	@Override
	public boolean insertPurchaser(PurchaserBean purchaser) {
		boolean result=purchaserDao.insertPurchaser(purchaser);
		return result;
	}

	@Override
	public List<PurchaserBean> viewPurchaser() {
		List<PurchaserBean> purchaserDetails=new ArrayList<PurchaserBean>();
		purchaserDetails=purchaserDao.viewPurchaser();
		return purchaserDetails;
	}

	public boolean insertPaymentSchedule(PaymentScheduleBean payment) {
		boolean result=purchaserDao.insertPaymentSchedule(payment);
		return result;
	}

	@Override
	public List<PaymentScheduleBean> viewPaymentSchedule(int id) {
		List<PaymentScheduleBean> paymentDetails=new ArrayList<PaymentScheduleBean>();
		paymentDetails=purchaserDao.viewPaymentSchedule(id);
		return paymentDetails;
	}
	

}
