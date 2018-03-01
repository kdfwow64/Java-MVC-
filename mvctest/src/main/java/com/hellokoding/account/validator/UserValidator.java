package com.hellokoding.account.validator;

import com.hellokoding.account.model.User;
import com.hellokoding.account.service.UserService;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

@Component
public class UserValidator implements Validator {
	
	private Pattern pattern;  
	private Matcher matcher;  
	private static final String EMAIL_PATTERN = "^[_A-Za-z0-9-\\+]+(\\.[_A-Za-z0-9-]+)*@"  
		   + "[A-Za-z0-9-]+(\\.[A-Za-z0-9]+)*(\\.[A-Za-z]{2,})$";  
		 String ID_PATTERN = "[0-9]+";  
		 String STRING_PATTERN = "[a-zA-Z]+";  
		 String MOBILE_PATTERN = "[0-9]{10}";
	
	
    @Autowired
    private UserService userService;

    @Override
    public boolean supports(Class<?> aClass) {
        return User.class.equals(aClass);
    }

    @Override
    public void validate(Object o, Errors errors) {
        User user = (User) o;

        
		/////////////////////Login///////////////////////////////////////////
		
	
		//////////////////////////Register///////////////////////////////////////
		//input string contains characters only and not empty (Name)
//	    ValidationUtils.rejectIfEmptyOrWhitespace(errors, "firstname", "NotEmpty");
		if (!(user.getFirstname() != null && user.getFirstname().isEmpty())) {  
			   pattern = Pattern.compile(STRING_PATTERN);  
			   matcher = pattern.matcher(user.getFirstname());  
			   if (!matcher.matches()) {  
			    errors.rejectValue("firstname", "firstname.containNonChar",  
			      "Enter a valid name"); 
			   }
			   if(user.getFirstname().length() > 10) {
				   errors.rejectValue("firstname" , "Size.userForm.firstname");
			   }
		}
        
		if (!(user.getLastname() != null && user.getLastname().isEmpty())) {  
			   pattern = Pattern.compile(STRING_PATTERN);  
			   matcher = pattern.matcher(user.getLastname());  
			   if (!matcher.matches()) {  
			    errors.rejectValue("lastname", "lastname.containNonChar",  
			      "Enter a valid name"); 
			   }
			   if(user.getLastname().length() > 10) {
				   errors.rejectValue("lastname" , "Size.userForm.lastname");
			   }
	    }
		
		// input string contains characters only  length<20
	    if (!(user.getPassword() != null && user.getPassword().isEmpty())) {  
			   pattern = Pattern.compile(STRING_PATTERN);  
			   matcher = pattern.matcher(user.getPassword());  
			   if (!matcher.matches()) {  
			    errors.rejectValue("password", "password.containNonChar",  
			      "Enter a valid password"); 
			   }
			   if(user.getPassword().length() > 20) {
				   errors.rejectValue("password" , "Size.userForm.password");
			   }
		}
	    //input string contains characters only length<20 equal?   (password)
	    if (!(user.getPasswordConfirm() != null && user.getPasswordConfirm().isEmpty())) {  
			   pattern = Pattern.compile(STRING_PATTERN);  
			   matcher = pattern.matcher(user.getPasswordConfirm());  
			   if (!matcher.matches()) {  
			    errors.rejectValue("passwordConfirm", "passwordConfirm.containNonChar",  
			      "Enter a valid password"); 
			   }
			   if(user.getPasswordConfirm().length() > 20) {
				   errors.rejectValue("passwordConfirm" , "Size.userForm.passwordConfirm","Too long");
			   }
		}
	    //password equal?
	    if (!user.getPasswordConfirm().equals(user.getPassword())) {
	    	   errors.rejectValue("passwordConfirm", "Diff.userForm.passwordConfirm");
	    }
	    
	    //not null (Address)
	    ValidationUtils.rejectIfEmptyOrWhitespace(errors, "address", "NotEmpty");
	    
	    //phone  numeric only
	    if (user.getPhone() != null) {  
	    	   pattern = Pattern.compile(ID_PATTERN);  
	    	   matcher = pattern.matcher(user.getPhone().toString());  
	    	   if (!matcher.matches()) {  
	    	    errors.rejectValue("phone", "phone.incorrect",  
	    	      "Enter a numeric value");  
	    	   }
	    }
		
	    //username already exists
/*        if (userService.findByUsername(user.getUsername()) != null) {
               errors.rejectValue("username", "Duplicate.userForm.username");
        }*/
		
        
        
        
        /*
        
        
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "username", "NotEmpty");
        if (user.getUsername().length() < 6 || user.getUsername().length() > 32) {
            errors.rejectValue("username", "Size.userForm.username");
        }
        if (userService.findByUsername(user.getUsername()) != null) {
            errors.rejectValue("username", "Duplicate.userForm.username");
        }

        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "password", "NotEmpty");
        if (user.getPassword().length() < 8 || user.getPassword().length() > 32) {
            errors.rejectValue("password", "Size.userForm.password");
        }

        if (!user.getPasswordConfirm().equals(user.getPassword())) {
            errors.rejectValue("passwordConfirm", "Diff.userForm.passwordConfirm");
        }  */
    }
}
