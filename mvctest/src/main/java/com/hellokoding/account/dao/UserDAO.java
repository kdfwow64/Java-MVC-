package com.hellokoding.account.dao;
 
import java.util.List;
 
import com.hellokoding.account.model.User;
 
/**
 * Defines DAO operations for the contact model.
 * @author www.codejava.net
 *
 */
public interface UserDAO {
     
    public void insertUser(User user);
     
    public void delete(String user_id);
     
    public User get(String user_id);
    
    User isThere(String username,String password);
     
    public List<User> list();
}