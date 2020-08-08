package com.ciss.cms.model;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;

public class VendorBean 
{
	private int vid=0;
	private String vname;
	private String regType;
	private String panNo;
	private String gstNo;
	private String address;
	private String typeOfVendor;
	private double creaditOffer;
	private List<MultipartFile> files;
	private double outstandingPayment;
	
	//getter setter
	public int getVid() {
		return vid;
	}
	public void setVid(int vid) {
		this.vid = vid;
	}
	public String getVname() {
		return vname;
	}
	public void setVname(String vname) {
		this.vname = vname;
	}
	public String getRegType() {
		return regType;
	}
	public void setRegType(String regType) {
		this.regType = regType;
	}
	public String getPanNo() {
		return panNo;
	}
	public void setPanNo(String panNo) {
		this.panNo = panNo;
	}
	public String getGstNo() {
		return gstNo;
	}
	public void setGstNo(String gstNo) {
		this.gstNo = gstNo;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getTypeOfVendor() {
		return typeOfVendor;
	}
	public void setTypeOfVendor(String typeOfVendor) {
		this.typeOfVendor = typeOfVendor;
	}
	public double getCreaditOffer() {
		return creaditOffer;
	}
	public void setCreaditOffer(double creaditOffer) {
		this.creaditOffer = creaditOffer;
	}
	public List<MultipartFile> getFiles() {
		return files;
	}
	public void setFiles(List<MultipartFile> files) {
		this.files = files;
	}
	public double getOutstandingPayment() {
		return outstandingPayment;
	}
	public void setOutstandingPayment(double outstandingPayment) {
		this.outstandingPayment = outstandingPayment;
	}
	
	
	
}
