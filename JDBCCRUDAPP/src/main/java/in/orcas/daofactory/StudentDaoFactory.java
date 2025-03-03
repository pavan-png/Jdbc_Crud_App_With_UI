package in.orcas.daofactory;

import in.orcas.dao.IStudentDao;
import in.orcas.dao.StudentDaoImpl;

public class StudentDaoFactory {

	private StudentDaoFactory() {
		
	}
	
	private static IStudentDao studentDao = null;
	public static IStudentDao getStudentDao() {
		if (studentDao==null) {
			studentDao = new StudentDaoImpl();
			}
			return studentDao; 
	}
}
