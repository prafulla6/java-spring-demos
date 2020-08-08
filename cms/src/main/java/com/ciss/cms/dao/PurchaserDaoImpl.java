package com.ciss.cms.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.stereotype.Repository;

import com.ciss.cms.model.NewProjectBean;
import com.ciss.cms.model.PaymentScheduleBean;
import com.ciss.cms.model.PurchaserBean;
import com.ciss.cms.model.WingDetailsBean;
import com.ciss.cms.util.ExtractResult;

@Repository
public class PurchaserDaoImpl implements PurchaserDao
{
   @Autowired
   DriverManagerDataSource dataSource;
	
	@Override
	public boolean insertPurchaser(PurchaserBean purchaser) {
		Connection con=null;
		boolean result=false;
		PreparedStatement preparedStatement=null;
		
		try
		{
			con=dataSource.getConnection();
			con.setAutoCommit(false);//for roll-back
			
			
			String sql="insert into purchaser(FName,LName,ContactNo,FlatNo,BuildingName,Area,FlatCost,MiscCost,NoOfSlab) values(?,?,?,?,?,?,?,?,?) ";
			preparedStatement=con.prepareStatement(sql);
			preparedStatement.setString(1,purchaser.getFname() );
			preparedStatement.setString(2,purchaser.getLname());
			preparedStatement.setString(3,purchaser.getContactNo());
			preparedStatement.setInt(4,purchaser.getFlatNo() );
			preparedStatement.setString(5,purchaser.getBuildName() );
			preparedStatement.setDouble(6,purchaser.getArea());
			preparedStatement.setDouble(7,purchaser.getFlatCost());
			preparedStatement.setDouble(8,purchaser.getMiscCost());
			preparedStatement.setDouble(9,purchaser.getNoOfSlab());
			
			preparedStatement.execute();
			System.out.println("purchaser added");
			result=true;
			
			
			//now insert payment schedule details
			
			PaymentScheduleBean paymentSch=purchaser.getPaymentSchedule();
			
			
			
			
			
			con.commit();
			
			
			
			
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
			
			try {
				con.rollback();
				result=false;
				
			} catch (SQLException | NullPointerException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
		}
		
		
		return result;
	}
	
	public  List<PurchaserBean> viewPurchaser()
	{
		List<PurchaserBean> purchaser=new ArrayList<>();
		Connection con=null;
		ResultSet rs=null;
		try {
			
			con=dataSource.getConnection();
			Statement st=con.createStatement();
			String sql="select * from purchaser";
			rs=st.executeQuery(sql);
			while(rs.next()) {
				
				PurchaserBean purchaserBean=ExtractResult.extractPurchaserFromResultSet(rs);
				purchaser.add(purchaserBean);
			}
		}
		
		catch(Exception e)
			
			
		{
			
			e.printStackTrace();
		}
		return purchaser;

	}


	public boolean insertPaymentSchedule(PaymentScheduleBean payment) 
	{
		Connection con=null;
		boolean result=false;
		PreparedStatement preparedStatement=null;
		
		try
		{
			con=dataSource.getConnection();
			con.setAutoCommit(false);//for roll-back
			
			
			String sql="insert into payment_schedule(asf,no_of_floor,plinth,first_slab,external_plaster,internal_plaster,plumbing,electrical,flooring,painting,possesion) values(?,?,?,?,?,?,?,?,?,?,?) ";
			preparedStatement=con.prepareStatement(sql);
			preparedStatement.setDouble(1,payment.getAsf());
			preparedStatement.setInt(2,payment.getNoOfFloor());
			preparedStatement.setDouble(3,payment.getPlinth());
			preparedStatement.setDouble(4,payment.getMySlab());
			preparedStatement.setDouble(5,payment.getExternalPlaster());
			preparedStatement.setDouble(6,payment.getInternalPlaster());
			preparedStatement.setDouble(7,payment.getPlumbing());
			preparedStatement.setDouble(8,payment.getElectrical());
			preparedStatement.setDouble(9,payment.getFlooring());
			preparedStatement.setDouble(10,payment.getPainting());
			preparedStatement.setDouble(11,payment.getPossesion());
			
			preparedStatement.execute();
			System.out.println("payment added");
			result=true;
			
			
			con.commit();
			
			
			
			
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
			
			try {
				con.rollback();
				result=false;
				
			} catch (SQLException | NullPointerException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
		}
		
		
		return result;	
	}

	@Override
	public List<PaymentScheduleBean> viewPaymentSchedule(int id) {
		List<PaymentScheduleBean> payment=new ArrayList<>();
		Connection con=null;
		ResultSet rs=null;
		try {
			
			con=dataSource.getConnection();
			
			String sql="select * from payment_schedule where id=?";
			PreparedStatement st=con.prepareStatement(sql);
			st.setInt(1,id);
			rs=st.executeQuery();
			while(rs.next()) {
				
				PaymentScheduleBean paymentDetails=ExtractResult.extractPaymentFromResultSet(rs);
				payment.add(paymentDetails);
			}
		}
		
		catch(Exception e)
			
			
		{
			
			e.printStackTrace();
		}
		return payment;
	}
	
}
