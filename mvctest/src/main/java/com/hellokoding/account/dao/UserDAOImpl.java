package com.hellokoding.account.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
 
import javax.sql.DataSource;
 
import com.hellokoding.account.model.User;
 
import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.ResultSetExtractor;
import org.springframework.jdbc.core.RowMapper;

public class UserDAOImpl implements UserDAO {
	 
    private JdbcTemplate jdbcTemplate;
 
    public UserDAOImpl(DataSource dataSource) {
        jdbcTemplate = new JdbcTemplate(dataSource);
    }
 
    @Override
    public void insertUser(User user) {
 /*       if (user.getId() > 0) {
            // update
            String sql = "UPDATE contact SET name=?, email=?, address=?, "
                        + "telephone=? WHERE contact_id=?";
            jdbcTemplate.update(sql, contact.getName(), contact.getEmail(),
                    contact.getAddress(), contact.getTelephone(), contact.getId());
        } else {
            // insert
            String sql = "INSERT INTO contact (name, email, address, telephone)"
                        + " VALUES (?, ?, ?, ?)";
            jdbcTemplate.update(sql, contact.getName(), contact.getEmail(),
                    contact.getAddress(), contact.getTelephone());
        }*/
    	String sql = "INSERT INTO tb_user (firstname,lastname,password,gender,address,phone,email)"
                + " VALUES (?,?,?,?,?,?,? )";
	    jdbcTemplate.update(sql, user.getFirstname(),user.getLastname(),
	    		user.getPassword(), user.getGender(),user.getAddress(),user.getPhone(),user.getEmail());
    }
 
    @Override
    public void delete(String user_id) {
        // implementation details goes here...
    	String sql = "DELETE FROM tb_user WHERE id=?";
        jdbcTemplate.update(sql, user_id);
    }
 
    @Override
    public List<User> list() {
        // implementation details goes here...
    	String sql = "SELECT * FROM tb_user";
        List<User> listUser = jdbcTemplate.query(sql, new RowMapper<User>() {
     
            @Override
            public User mapRow(ResultSet rs, int rowNum) throws SQLException {
                User aUser = new User();
     
                aUser.setFirstname(rs.getString("firstname"));
                aUser.setLastname(rs.getString("lastname"));
                aUser.setGender(rs.getString("gender"));
                aUser.setPassword(rs.getString("password"));
                aUser.setEmail(rs.getString("email"));
                aUser.setAddress(rs.getString("address"));
                aUser.setPhone(rs.getString("telephone"));
     
                return aUser;
            }
     
        });
     
        return listUser;
    }
 
    @Override
    public User get(String user_id) {
        // implementation details goes here...
    	String sql = "SELECT * FROM tb_user WHERE id =" + user_id;
        return jdbcTemplate.query(sql, new ResultSetExtractor<User>() {
     
            @Override
            public User extractData(ResultSet rs) throws SQLException,
                    DataAccessException {
                if (rs.next()) {
                    User aUser = new User();
                    aUser.setFirstname(rs.getString("firstname"));
                    aUser.setLastname(rs.getString("lastname"));
                    aUser.setGender(rs.getString("gender"));
                    aUser.setPassword(rs.getString("password"));
                    aUser.setEmail(rs.getString("email"));
                    aUser.setAddress(rs.getString("address"));
                    aUser.setPhone(rs.getString("telephone"));
                    return aUser;
                }
                return null;
            }
     
        });
    }
    @Override
	public User isThere(String username,String password) {
    	String sql = "SELECT * FROM tb_user WHERE id = " + username + " And password = " +password;
    	return jdbcTemplate.query(sql, new ResultSetExtractor<User>() {
    	     
            @Override
            public User extractData(ResultSet rs) throws SQLException,
                    DataAccessException {
                if (rs.next()) {
                    User aUser = new User();
                    aUser.setFirstname(rs.getString("firstname"));
                    aUser.setLastname(rs.getString("lastname"));
                    aUser.setGender(rs.getString("gender"));
                    aUser.setPassword(rs.getString("password"));
                    aUser.setEmail(rs.getString("email"));
                    aUser.setAddress(rs.getString("address"));
                    aUser.setPhone(rs.getString("telephone"));
                    return aUser;
                }
                return null;
            }
     
        });
    }
 
}