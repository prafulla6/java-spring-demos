package com.ciss.cms.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.ciss.cms.dao.NewProjectDetailsDao;
import com.ciss.cms.model.NewFlatDetailsBean;
import com.ciss.cms.model.NewProjectBean;
import com.ciss.cms.model.PurchaserBean;
import com.ciss.cms.model.WingDetailsBean;

@Service
public interface NewProjectService {

	
//=============================+Add Project,Wing & Flat Details=============================================

	public abstract boolean insertProjectDetails(NewProjectBean projectDetails);
	public abstract boolean addFlatDetails(NewFlatDetailsBean flatDetails,String projectName);

     public abstract boolean insertWingDetails(WingDetailsBean wingDetails,String projectName);
   
   //=======================Show project Details=================================================
   
	public abstract List<NewProjectBean> showProjectDetails();
	public abstract List<WingDetailsBean> showWingDetails(String projectName);
	public abstract List<NewFlatDetailsBean> showFlatDetails(String projectName);
	
}
