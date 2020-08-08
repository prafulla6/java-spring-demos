package com.ciss.cms.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.stereotype.Repository;

import com.ciss.cms.model.InvoiceBean;
import com.ciss.cms.model.VendorBean;
import com.ciss.cms.util.ExtractResult;

@Repository
public class VendorDaoImpl implements VendorDao {
	@Autowired
	private DriverManagerDataSource dataSource;

	@Override
	public boolean insertVendor(VendorBean vendor) {
		System.out.println("vendor executed");
		Boolean result=false;
		Connection con=null;
		PreparedStatement pst=null;
		
		try
		{
			con=dataSource.getConnection();
			String sql="INSERT INTO `vendor`(`vname`, `org_type`, `pan_no`, `gst_no`, `address`, `vendor_type`, `credit_period`, `work_order_copy`, `invoice_copy`, `outstanding_payment`) VALUES (?,?,?,?,?,?,?,?,?,?)";
			pst=con.prepareStatement(sql);
			pst.setString(1,vendor.getVname());
			pst.setString(2,vendor.getRegType());
			pst.setString(3,vendor.getPanNo());
			pst.setString(4,vendor.getGstNo());
			pst.setString(5,vendor.getAddress());
			pst.setString(6,vendor.getTypeOfVendor());
			pst.setDouble(7,vendor.getCreaditOffer());
			pst.setBlob(8,vendor.getFiles().get(0).getInputStream());
			pst.setBlob(9,vendor.getFiles().get(1).getInputStream());
			pst.setDouble(10,vendor.getOutstandingPayment());
			int num=pst.executeUpdate();
			System.out.println("statement 2 executed");
			if (num>0) 
			{
				result=true;
				System.out.println("vendor added successfully");
			}
		
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return result;
	}

	@Override
	public boolean insertInvoice(InvoiceBean invoice) {
		System.out.println("vendor executed");
		Boolean result=false;
		Connection con=null;
		PreparedStatement pst=null;
		
		try
		{
			con=dataSource.getConnection();
			String sql="INSERT INTO `invoice`( `date`, `amt_payable`, `cgst`, `sgst`, `tds`) VALUES (?,?,?,?,?)";
			pst=con.prepareStatement(sql);
			pst.setString(1,invoice.getDate());
			pst.setDouble(2,invoice.getAmtPayable());
			pst.setDouble(3,invoice.getCgst());
			pst.setDouble(4,invoice.getSgst());
			pst.setDouble(5,invoice.getTds());
			int num=pst.executeUpdate();
			System.out.println("statement 2 executed");
			if (num>0) 
			{
				result=true;
				System.out.println("invoice added successfully");
			}
			
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return result;

	}

	@Override
	public List<VendorBean> showVendor() {
		List<VendorBean> vendor=new ArrayList<VendorBean>();
		Connection con=null;
		ResultSet rs=null;
		PreparedStatement pst=null;
		
		try
		{
			con=dataSource.getConnection();
			String sql="select * from vendor";
			pst=con.prepareStatement(sql);
			rs=pst.executeQuery();
			while(rs.next())
			{
				VendorBean vendorBean=ExtractResult.extractVendorsFromResultSet(rs);
				vendor.add(vendorBean);
			}
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return vendor;
	}

	@Override
	public List<InvoiceBean> showInvoice(int invoiceId) {
		List<InvoiceBean> invoice=new ArrayList<InvoiceBean>();
		Connection con=null;
		ResultSet rs=null;
		PreparedStatement pst=null;
		
		try
		{
			con=dataSource.getConnection();
			String sql="select * from invoice where inv_id=?";
			pst=con.prepareStatement(sql);
			pst.setInt(1, invoiceId);
			rs=pst.executeQuery();
			while(rs.next())
			{
				InvoiceBean invoiceBean=ExtractResult.extractInvoiceFromResultSet(rs);
				invoice.add(invoiceBean);
			}
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return invoice;

	}

}
