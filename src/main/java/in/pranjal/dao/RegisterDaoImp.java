package in.pranjal.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import in.pranjal.beans.Student;

@Repository
public class RegisterDaoImp implements RegisterDao {

  
	@Autowired
	JdbcTemplate jdbcTemplate;

   
	@Override
	public boolean registerDao(Student std) {
		
		boolean status = false;
		
		try {
			
			String mysql_query ="insert into register values(?,?,?,?,?)";
			
			int count = jdbcTemplate.update(mysql_query, new Object[] { std.getName(), std.getEmail(), std.getPassword(), std.getGender(), std.getCity()});
			if(count > 0) status = true;
			else status = false;
			
		}
		catch (Exception e) {
			status = false;
			e.printStackTrace();
		}
		return status;
	}

}
