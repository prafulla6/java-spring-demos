package com.ciss.cms.util;

import java.sql.ResultSet;
import java.sql.SQLException;

import com.ciss.cms.model.InvoiceBean;
import com.ciss.cms.model.NewFlatDetailsBean;
import com.ciss.cms.model.NewProjectBean;
import com.ciss.cms.model.PaymentScheduleBean;
import com.ciss.cms.model.PurchaserBean;
import com.ciss.cms.model.VendorBean;
import com.ciss.cms.model.WingDetailsBean;

public class ExtractResult {

	public static NewProjectBean extractProjectFromResultSet(ResultSet rs) throws SQLException {
		NewProjectBean projectDetails = new NewProjectBean();
	   
		projectDetails.setpId(rs.getInt("p_id"));
		projectDetails.setPname( rs.getString("pname") );
		projectDetails.setReraNo(rs.getString("rerano"));
		projectDetails.setPlocation( rs.getString("plocation"));
		projectDetails.setPcity(rs.getString("pcity"));
		projectDetails.setNoOfWing(rs.getInt("noofwing"));
		projectDetails.setNameOfWing(rs.getString("nameofwing"));
	    return projectDetails;
	}
	
	
	
	
	public static WingDetailsBean extractWingFromResultSet(ResultSet rs) throws SQLException {
		WingDetailsBean wingDetails = new WingDetailsBean();
	   
		wingDetails.setWingName(rs.getString("nameofwing"));
		wingDetails.setNoOfFloor(rs.getInt("nooffloor"));
		wingDetails.setNoOfSlab(rs.getInt("noofslab"));
		wingDetails.setOneBHK(rs.getInt("noof1bhk"));
		wingDetails.setTwoBHK(rs.getInt("noof2bhk"));
		wingDetails.setTotalFlats(rs.getInt("totalnoofflat"));
	
	
	    return wingDetails;
	}
	


	public static NewFlatDetailsBean extractFlatFromResultSet(ResultSet rs) throws SQLException {
		NewFlatDetailsBean flatDetails = new NewFlatDetailsBean();
	   
	flatDetails.setArea(rs.getDouble("area"));
	flatDetails.setCflat(rs.getDouble("cofflat"));
	flatDetails.setCparking(rs.getDouble("cofparking"));
	flatDetails.setAmenities(rs.getDouble("cofamenities"));
	
	
	    return flatDetails;


}




	public static PurchaserBean extractPurchaserFromResultSet(ResultSet rs) throws SQLException
	{
		PurchaserBean purchaserDetails = new PurchaserBean();
		purchaserDetails.setPurchar_id(rs.getInt("pid"));  
		purchaserDetails.setFname(rs.getString("fname"));
		purchaserDetails.setLname(rs.getString("lname"));
		purchaserDetails.setFlatNo(rs.getInt("flatno"));
		purchaserDetails.setBuildName(rs.getString("buildingname"));
		purchaserDetails.setArea(rs.getDouble("area"));
		purchaserDetails.setFlatCost(rs.getDouble("flatcost"));
		purchaserDetails.setMiscCost(rs.getDouble("misccost"));
		purchaserDetails.setNoOfSlab(rs.getInt("noofSlab"));
		return purchaserDetails;
	}
	
	public static PaymentScheduleBean extractPaymentFromResultSet(ResultSet rs) throws SQLException
	{
		PaymentScheduleBean paymentDetails = new PaymentScheduleBean();
		paymentDetails.setPid(rs.getInt("id"));
		paymentDetails.setAsf(rs.getDouble("asf"));  
		paymentDetails.setNoOfFloor(rs.getInt("no_of_floor"));
		paymentDetails.setPlinth(rs.getDouble("plinth"));
		paymentDetails.setMySlab(rs.getDouble("first_slab"));
		paymentDetails.setExternalPlaster(rs.getDouble("external_plaster"));
		paymentDetails.setInternalPlaster(rs.getDouble("external_plaster"));
		paymentDetails.setPlumbing(rs.getDouble("plumbing"));
		paymentDetails.setElectrical(rs.getDouble("electrical"));
		paymentDetails.setFlooring(rs.getDouble("flooring"));
		paymentDetails.setPainting(rs.getDouble("painting"));
		paymentDetails.setPossesion(rs.getDouble("possesion"));
		return paymentDetails;
	}
	
	public static VendorBean extractVendorsFromResultSet(ResultSet rs) throws SQLException
	{
		VendorBean vendor = new VendorBean();
		vendor.setVid(rs.getInt("vid"));
		vendor.setVname(rs.getString("vname"));
		vendor.setRegType(rs.getString("org_type"));  
		vendor.setPanNo(rs.getString("pan_no"));
		vendor.setGstNo(rs.getString("gst_no"));
		vendor.setAddress(rs.getString("address"));
		vendor.setTypeOfVendor(rs.getString("vendor_type"));
		vendor.setCreaditOffer(rs.getDouble("credit_period"));
		vendor.setOutstandingPayment(rs.getDouble("outstanding_payment"));
		
		return vendor;
	}
	public static InvoiceBean extractInvoiceFromResultSet(ResultSet rs) throws SQLException
	{
		InvoiceBean invoice = new InvoiceBean();
		invoice.setInvNo(rs.getString("inv_id"));
		invoice.setDate(rs.getString("date"));  
		invoice.setAmtPayable(rs.getDouble("amt_payable"));
		invoice.setCgst(rs.getDouble("cgst"));
		invoice.setSgst(rs.getDouble("sgst"));
		invoice.setTds(rs.getDouble("tds"));
	
		
		return invoice;
	}
	
}
