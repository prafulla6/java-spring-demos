package com.ciss.cms.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import org.apache.tomcat.util.net.TLSClientHelloExtractor.ExtractorResult;
import org.springframework.beans.FatalBeanException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.stereotype.Repository;

import com.ciss.cms.model.NewFlatDetailsBean;
import com.ciss.cms.model.NewProjectBean;
import com.ciss.cms.model.PaymentScheduleBean;
import com.ciss.cms.model.PurchaserBean;
import com.ciss.cms.model.WingDetailsBean;
import com.ciss.cms.util.ExtractResult;

@Repository
public class NewProjectDetailsDaoImpl implements NewProjectDetailsDao {

	
	
	  @Autowired
	   DriverManagerDataSource dataSource;
		
		@Override
		public boolean insertProjectDetails(NewProjectBean projectDetails) {
			Connection con=null;
			boolean result=false;
			PreparedStatement preparedStatement=null;
			
			try
			{
				con=dataSource.getConnection();
				con.setAutoCommit(false);//for roll-back
				
				
				String sql="insert into projectdetails(pname,rerano,plocation,pcity,noofwing,nameofwing) values(?,?,?,?,?,?) ";
				preparedStatement=con.prepareStatement(sql);
				preparedStatement.setString(1,projectDetails.getPname());
				preparedStatement.setString(2,projectDetails.getReraNo());
				preparedStatement.setString(3,projectDetails.getPlocation());
				preparedStatement.setString(4,projectDetails.getPcity());
				preparedStatement.setInt(5,projectDetails.getNoOfWing());
				preparedStatement.setString(6,projectDetails.getNameOfWing());
                
				preparedStatement.execute();
				System.out.println("project added");
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
		
//=================================Add Wing Details========================================================
		
		
		@Override
		public boolean insertWingDetails(WingDetailsBean wingDetails,String projectName) {
			Connection con=null;
			boolean result=false;
			PreparedStatement preparedStatement=null;
			
			try
			{
				con=dataSource.getConnection();
				con.setAutoCommit(false);//for roll-back
				
				
				String sql="insert into wingdetails(nameofwing,nooffloor,noofslab,noof1bhk,noof2bhk,totalnoofflat,pname) values(?,?,?,?,?,?,?) ";
				preparedStatement=con.prepareStatement(sql);
				preparedStatement.setString(1,wingDetails.getWingName());
				preparedStatement.setInt(2,wingDetails.getNoOfFloor());
				preparedStatement.setInt(3,wingDetails.getNoOfSlab());
				preparedStatement.setInt(4,wingDetails.getOneBHK());
				preparedStatement.setInt(5,wingDetails.getTwoBHK());
				preparedStatement.setInt(6,wingDetails.getTotalFlats());
				preparedStatement.setString(7,projectName );
                
				preparedStatement.execute();
				System.out.println("Wing added");
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
			
	
		
//========================================For Flat Details============================= ===========
			
				
		public boolean addtFlatDetails(NewFlatDetailsBean flatDetails,String projectName) {
			
					Connection con=null;
					boolean result=false;
					PreparedStatement preparedStatement=null;
					
					try
					{
						con=dataSource.getConnection();
			
			          con.setAutoCommit(false);
						


			          
//===================================/now insert 1 BHK flat  details========================================
			
			
			String sql1="insert into flat(flat_type,area,cofflat,cofparking,cofamenities,prname) values(?,?,?,?,?,?)";
			
			
			preparedStatement=con.prepareStatement(sql1);
			
			preparedStatement.setString(1,"1bhk");
			preparedStatement.setDouble(2,flatDetails.getArea());
			preparedStatement.setDouble(3,flatDetails.getCflat());
			preparedStatement.setDouble(4,flatDetails.getCparking());
			preparedStatement.setDouble(5,flatDetails.getAmenities());
			preparedStatement.setString(6,projectName);
			
			preparedStatement.execute();
			
			System.out.println("1BHK details added");
			
			
			
//========================Now insert 2Bhk Flat details============================================================
			
			String sql2="insert into flat(flat_type,area,cofflat,cofparking,cofamenities,prname) values(?,?,?,?,?,?)";
			preparedStatement=con.prepareStatement(sql2);
			preparedStatement.setString(1,"2bhk");
			preparedStatement.setDouble(2,flatDetails.getArea2());
			preparedStatement.setDouble(3,flatDetails.getCflat2());
			preparedStatement.setDouble(4,flatDetails.getCparking2());
			preparedStatement.setDouble(5,flatDetails.getAmenities2());
			preparedStatement.setString(6,projectName);
			
			preparedStatement.execute();
			con.commit();
			System.out.println("2bhk added");
			result=true;
			
			
			
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


//=============================Show the Project Details==========================================================
				

		public List<NewProjectBean> showProjectDetails(){
			List<NewProjectBean> project=new ArrayList<>();
			Connection con=null;
			ResultSet rs=null;
			try {
				
				con=dataSource.getConnection();
				Statement st=con.createStatement();
				String sql="select * from projectdetails";
				rs=st.executeQuery(sql);
				while(rs.next()) {
					
					NewProjectBean projectBean=ExtractResult.extractProjectFromResultSet(rs);
					 project.add(projectBean);
				}
			}
			
			catch(Exception e)
				
				
			{
				
				e.printStackTrace();
			}
			return project;
		}
		//========================================show Wing Details==============================
		


		public List<WingDetailsBean> showWingDetails(String projectName){
			List<WingDetailsBean> wing=new ArrayList<>();
			Connection con=null;
			ResultSet rs=null;
			try {
				
				con=dataSource.getConnection();
				
				String sql="select * from wingDetails where pname=?";
				PreparedStatement st=con.prepareStatement(sql);
				st.setString(1,projectName);
				rs=st.executeQuery();
				while(rs.next()) {
					
					WingDetailsBean WingDetails=ExtractResult.extractWingFromResultSet(rs);
					 wing.add(WingDetails);
				}
			}
			
			catch(Exception e)
				
				
			{
				
				e.printStackTrace();
			}
			return wing;
		}

		
		//=============================show Flat Details======================
		
		public List<NewFlatDetailsBean> showFlatDetails(String projectName){
			List<NewFlatDetailsBean> flat=new ArrayList<>();
			Connection con=null;
			ResultSet rs=null;
			try {
				
				con=dataSource.getConnection();
				String sql="select * from flat where prname=?";
				PreparedStatement st=con.prepareStatement(sql);
				st.setString(1,projectName);
				rs=st.executeQuery();
				while(rs.next()) {
					
					NewFlatDetailsBean flatDetails=ExtractResult.extractFlatFromResultSet(rs);
					 flat.add(flatDetails);
				}
			}
			
			catch(Exception e)
				
				
			{
				
				e.printStackTrace();
			}
			return flat;
		}

		
		
}
		
		
				
				
		
		
	
	
	

