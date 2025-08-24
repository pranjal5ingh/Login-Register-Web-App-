package in.pranjal.dao;

import java.util.List;

import in.pranjal.beans.Student;

public interface LoginDao {

	public List<Student> loginDao(String email, String password);
	
}
