package com.ciss.cms.model;

public class PurchaserBean
{
	private int purchar_id=0;
	private String fname;
	private String lname;
	private String contactNo;
	private int flatNo;
	private String buildName;
	private double area;
	private double flatCost;
	private double miscCost;
	private int noOfSlab;
	
	private PaymentScheduleBean paymentSchedule;
	
	public int getPurchar_id() {
		return purchar_id;
	}
	public void setPurchar_id(int purchar_id) {
		this.purchar_id = purchar_id;
	}
	public String getFname() {
		return fname;
	}
	public void setFname(String fname) {
		this.fname = fname;
	}
	public String getLname() {
		return lname;
	}
	public void setLname(String lname) {
		this.lname = lname;
	}
	public int getFlatNo() {
		return flatNo;
	}
	public void setFlatNo(int flatNo) {
		this.flatNo = flatNo;
	}
	public String getBuildName() {
		return buildName;
	}
	public void setBuildName(String buildName) {
		this.buildName = buildName;
	}
	public double getArea() {
		return area;
	}
	public void setArea(double area) {
		this.area = area;
	}
	public double getFlatCost() {
		return flatCost;
	}
	public void setFlatCost(double flatCost) {
		this.flatCost = flatCost;
	}
	public double getMiscCost() {
		return miscCost;
	}
	public void setMiscCost(double miscCost) {
		this.miscCost = miscCost;
	}
	public int getNoOfSlab() {
		return noOfSlab;
	}
	public void setNoOfSlab(int noOfSlab) {
		this.noOfSlab = noOfSlab;
	}
	public String getContactNo() {
		return contactNo;
	}
	public void setContactNo(String contactNo) {
		this.contactNo = contactNo;
	}
	public PaymentScheduleBean getPaymentSchedule() {
		return paymentSchedule;
	}
	public void setPaymentSchedule(PaymentScheduleBean paymentSchedule) {
		this.paymentSchedule = paymentSchedule;
	}
	
	
	
	
}
