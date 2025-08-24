package in.pranjal.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import in.pranjal.beans.Student;
import in.pranjal.dao.LoginDao;
import in.pranjal.dao.LoginDaoImp;

@Service
public class LoginServiceImpl implements LoginServices {

	@Autowired
	LoginDao loginDao;
	
	@Override
	public List<Student> loginServices(String email, String password) {
		
//		LoginDaoImp loginDaoImp = new LoginDaoImp();
//		List<Student> student_list = loginDaoImp.loginDao(email, password);
//		return student_list;
		
//		LoginDao loginDao = new LoginDaoImp();
//		List<Student> student_list = loginDao.loginDao(email, password);
//		return student_list;
		
		List<Student> student_list = loginDao.loginDao(email, password);
		return student_list;
	}

}
