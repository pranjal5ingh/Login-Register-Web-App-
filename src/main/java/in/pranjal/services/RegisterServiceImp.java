package in.pranjal.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import in.pranjal.beans.Student;
import in.pranjal.dao.RegisterDao;

@Service
public class RegisterServiceImp implements RegisterServices {

	
	@Autowired
	RegisterDao registerDao;
	@Override
	public boolean registerService(Student std) {
		
		boolean status = registerDao.registerDao(std);
		
		return status;
	}

	
}
