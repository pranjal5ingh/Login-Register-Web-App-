package in.pranjal.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import in.pranjal.beans.Student;
import in.pranjal.mapper.StudentMapper;

@Repository
public class LoginDaoImp implements LoginDao{
	
	@Autowired
	JdbcTemplate jdbcTemplate;

	@Override
	public List<Student> loginDao(String email, String password) {
		List<Student> student_list = null;
		try {
			String mysql_query = "select * from register where email = ? and password = ?";
			student_list = jdbcTemplate.query(mysql_query,new StudentMapper(), new Object[] {email,password});
		}catch (Exception e) {
		
			e.printStackTrace();
		}
		
		return student_list;
	}

	
}
