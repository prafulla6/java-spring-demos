package com.ciss.cms.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ciss.cms.dao.NewProjectDetailsDao;
import com.ciss.cms.model.NewFlatDetailsBean;
import com.ciss.cms.model.NewProjectBean;
import com.ciss.cms.model.WingDetailsBean;


@Service
public class NewProjectServiceImpl implements NewProjectService {

	@Autowired
	NewProjectDetailsDao newProjctDao;

	@Override
	public boolean insertProjectDetails(NewProjectBean projectDetails) {
		boolean result=newProjctDao.insertProjectDetails(projectDetails);
		return result;
	}
	
	@Override
		public boolean addFlatDetails(NewFlatDetailsBean flatDetails,String projectName) {
			
			boolean result=newProjctDao.addtFlatDetails(flatDetails,projectName);
			return result;
		}
	
	@Override
	public boolean insertWingDetails(WingDetailsBean wingDetails,String projectName) {
		boolean result=newProjctDao.insertWingDetails(wingDetails,projectName);
		return result;
	}
	@Override
	public List<NewProjectBean> showProjectDetails() {
		List<NewProjectBean> projectBean=new ArrayList<>();
		projectBean=newProjctDao.showProjectDetails();
		return projectBean;
	}
	
	@Override
	public List<WingDetailsBean> showWingDetails(String projectName) {
		List<WingDetailsBean> showWingDetails=new ArrayList<>();
		showWingDetails=newProjctDao.showWingDetails(projectName);
		return showWingDetails;

}
	
	
	@Override
	public List<NewFlatDetailsBean> showFlatDetails(String projectName) {
		List<NewFlatDetailsBean> showFlatDetails=new ArrayList<>();
		showFlatDetails=newProjctDao.showFlatDetails(projectName);
		return showFlatDetails;

}
}
	
	

