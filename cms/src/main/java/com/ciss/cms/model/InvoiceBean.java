package com.ciss.cms.model;

import java.sql.Date;

public class InvoiceBean 
{
	private int inv_id=0;
	private String invNo;
	private String date;
	private Double amtPayable;
	private Double cgst;
	private Double sgst;
	private Double tds;
	
	public int getInv_id() {
		return inv_id;
	}
	public void setInv_id(int inv_id) {
		this.inv_id = inv_id;
	}
	public String getInvNo() {
		return invNo;
	}
	public void setInvNo(String invNo) {
		this.invNo = invNo;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
		System.out.println("date is : "+date);
	}
	public Double getAmtPayable() {
		return amtPayable;
	}
	public void setAmtPayable(Double amtPayable) {
		this.amtPayable = amtPayable;
	}
	public Double getCgst() {
		return cgst;
	}
	public void setCgst(Double cgst) {
		this.cgst = cgst;
	}
	public Double getSgst() {
		return sgst;
	}
	public void setSgst(Double sgst) {
		this.sgst = sgst;
	}
	public Double getTds() {
		return tds;
	}
	public void setTds(Double tds) {
		this.tds = tds;
	}
	
	
}
