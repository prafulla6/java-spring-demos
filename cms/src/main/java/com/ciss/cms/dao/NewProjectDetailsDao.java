package com.ciss.cms.dao;



import java.util.List;

import org.springframework.stereotype.Repository;

import com.ciss.cms.model.NewFlatDetailsBean;
import com.ciss.cms.model.NewProjectBean;
import com.ciss.cms.model.WingDetailsBean;

public interface NewProjectDetailsDao {

	public abstract boolean insertProjectDetails(NewProjectBean pojectDetails);
	public abstract boolean addtFlatDetails(NewFlatDetailsBean flatDetails,String projectName);
	
	public abstract boolean insertWingDetails(WingDetailsBean wingDetails,String projectName);	
	
	//================================Show Project Details===============================
	
	public List<NewProjectBean> showProjectDetails();
	public List<WingDetailsBean> showWingDetails(String projectName);
	public List<NewFlatDetailsBean> showFlatDetails(String projectName);	
		
	
}
