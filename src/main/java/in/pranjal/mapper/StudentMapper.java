package in.pranjal.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;


import in.pranjal.beans.Student;

public class StudentMapper implements RowMapper<Student> {

	@Override
	public Student mapRow(ResultSet rs, int rowNum) throws SQLException {
		// TODO Auto-generated method stub
		
		Student std = new Student();
		std.setName(rs.getString("name"));
		std.setEmail(rs.getString("email"));
		std.setPassword(rs.getString("password"));
		std.setGender(rs.getString("gender"));
		std.setCity(rs.getString("city"));
		
		return std;
	}

	
}
