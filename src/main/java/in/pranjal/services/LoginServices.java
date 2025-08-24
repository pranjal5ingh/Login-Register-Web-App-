package in.pranjal.services;

import java.util.List;

import in.pranjal.beans.Student;

public interface LoginServices {

	public List<Student> loginServices(String email, String password);
}
