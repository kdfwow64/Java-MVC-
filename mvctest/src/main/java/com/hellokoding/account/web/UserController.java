package com.hellokoding.account.web;

import com.hellokoding.account.model.User;
import com.hellokoding.account.dao.*;
import com.hellokoding.account.service.SecurityService;
import com.hellokoding.account.service.UserService;
import com.hellokoding.account.validator.UserValidator;


import java.io.IOException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class UserController {
	@Autowired
    private UserDAO userDAO;
	
	
    @Autowired
    private UserService userService;

    @Autowired
    private SecurityService securityService;

    @Autowired
    private UserValidator userValidator;

   
    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public String login(Model model, String error, String logout) {
        if (error != null)
            model.addAttribute("error", "Invalid User Name and password*");

        if (logout != null)
            model.addAttribute("message", "You have been logged out successfully.");
     //   userDAO.isThere(model.);
        return "login";
    }

/*
    @RequestMapping(value = "/login", method = RequestMethod.POST)
    public String login(@ModelAttribute("login-form") loginform) {
        userDAO.isThere();
        return "redirect:/index";
    }
 */   
    /*
    @RequestMapping(value = "/login", method = RequestMethod.POST)
    public String login(@ModelAttribute("login-form") User userForm) {
        userDAO.isThere(userForm.getUsername(),userForm.getPassword());
        return "regularuser";
    }*/
    
    @RequestMapping(value = "/register", method = RequestMethod.GET)
    public String register(Model model) {
        model.addAttribute("userForm", new User());

        return "register";
    }

    @RequestMapping(value = "/register", method = RequestMethod.POST)
    public String register(@ModelAttribute("userForm") User userForm, BindingResult bindingResult, Model model) {
        userValidator.validate(userForm, bindingResult);

        if (bindingResult.hasErrors()) {
            return "register";
        }

        userDAO.insertUser(userForm);
        return "redirect:/index";
    }

    @RequestMapping(value = "/index", method = RequestMethod.GET)
    public String index(Model model) {
        model.addAttribute("userForm", new User());

        return "index";
    }
/*
    @RequestMapping(value = "/index", method = RequestMethod.POST)
    public String index(@ModelAttribute("userForm") User userForm, BindingResult bindingResult, Model model) {
        userValidator.validate(userForm, bindingResult);

        if (bindingResult.hasErrors()) {
            return "index";
        }

        

        securityaService.autologin(userForm.getUsername(), userForm.getPasswordConfirm());

        return "redirect:/welcome";
    }*/
    
    @RequestMapping(value = "/menuitems", method = RequestMethod.GET)
    public String menuitems(Model model) {
        model.addAttribute("userForm", new User());

        return "menuitems";
    }

    @RequestMapping(value = "/menuitems", method = RequestMethod.POST)
    public String menuitems(@ModelAttribute("userForm") User userForm, BindingResult bindingResult, Model model) {
        userValidator.validate(userForm, bindingResult);

        if (bindingResult.hasErrors()) {
            return "menuitems";
        }

        

        

        return "redirect:/welcome";
    }
    
    @RequestMapping(value = "/admininformation", method = RequestMethod.GET)
    public String admininformation(Model model) {
        model.addAttribute("userForm", new User());

        return "admininformation";
    }

    @RequestMapping(value = "/admininformation", method = RequestMethod.POST)
    public String admininformation(@ModelAttribute("userForm") User userForm, BindingResult bindingResult, Model model) {
        userValidator.validate(userForm, bindingResult);

        if (bindingResult.hasErrors()) {
            return "admininformation";
        }

        

        

        return "redirect:/welcome";
    }
    
    @RequestMapping(value = "/error", method = RequestMethod.GET)
    public String error(Model model) {
        model.addAttribute("userForm", new User());

        return "error";
    }

    @RequestMapping(value = "/error", method = RequestMethod.POST)
    public String error(@ModelAttribute("userForm") User userForm, BindingResult bindingResult, Model model) {
        userValidator.validate(userForm, bindingResult);

        if (bindingResult.hasErrors()) {
            return "error";
        }

        

        

        return "redirect:/welcome";
    }
    
    @RequestMapping(value = "/list", method = RequestMethod.GET)
    public String list(Model model) {
        model.addAttribute("userForm", new User());

        return "list";
    }

    @RequestMapping(value = "/list", method = RequestMethod.POST)
    public String list(@ModelAttribute("userForm") User userForm, BindingResult bindingResult, Model model) {
        userValidator.validate(userForm, bindingResult);

        if (bindingResult.hasErrors()) {
            return "list";
        }

        

        

        return "redirect:/welcome";
    }
    
    @RequestMapping(value = "/location", method = RequestMethod.GET)
    public String location(Model model) {
        model.addAttribute("userForm", new User());

        return "location";
    }

    @RequestMapping(value = "/location", method = RequestMethod.POST)
    public String location(@ModelAttribute("userForm") User userForm, BindingResult bindingResult, Model model) {
        userValidator.validate(userForm, bindingResult);

        if (bindingResult.hasErrors()) {
            return "location";
        }

        

        

        return "redirect:/welcome";
    }
    
    @RequestMapping(value = "/logout", method = RequestMethod.GET)
    public String logout(Model model) {
        model.addAttribute("userForm", new User());

        return "logout";
    }

    @RequestMapping(value = "/logout", method = RequestMethod.POST)
    public String logout(@ModelAttribute("userForm") User userForm, BindingResult bindingResult, Model model) {
        userValidator.validate(userForm, bindingResult);

        if (bindingResult.hasErrors()) {
            return "logout";
        }

        

        

        return "redirect:/welcome";
    }
    
    @RequestMapping(value = "/menuitem2", method = RequestMethod.GET)
    public String menuitem2(Model model) {
        model.addAttribute("userForm", new User());

        return "menuitem2";
    }

    @RequestMapping(value = "/menuitem2", method = RequestMethod.POST)
    public String menuitem2(@ModelAttribute("userForm") User userForm, BindingResult bindingResult, Model model) {
        userValidator.validate(userForm, bindingResult);

        if (bindingResult.hasErrors()) {
            return "menuitem2";
        }

        

        

        return "redirect:/welcome";
    }
    
    @RequestMapping(value = "/order", method = RequestMethod.GET)
    public String order(Model model) {
        model.addAttribute("userForm", new User());

        return "order";
    }

    @RequestMapping(value = "/order", method = RequestMethod.POST)
    public String order(@ModelAttribute("userForm") User userForm, BindingResult bindingResult, Model model) {
        userValidator.validate(userForm, bindingResult);

        if (bindingResult.hasErrors()) {
            return "order";
        }

        

        

        return "redirect:/welcome";
    }
    
    @RequestMapping(value = "/orderlist", method = RequestMethod.GET)
    public String orderlist(Model model) {
        model.addAttribute("userForm", new User());

        return "orderlist";
    }

    @RequestMapping(value = "/orderlist", method = RequestMethod.POST)
    public String orderlist(@ModelAttribute("userForm") User userForm, BindingResult bindingResult, Model model) {
        userValidator.validate(userForm, bindingResult);

        if (bindingResult.hasErrors()) {
            return "orderlist";
        }

        

        

        return "redirect:/welcome";
    }
    
    @RequestMapping(value = "/orderrecipt", method = RequestMethod.GET)
    public String orderrecipt(Model model) {
        model.addAttribute("userForm", new User());

        return "orderrecipt";
    }

    @RequestMapping(value = "/orderrecipt", method = RequestMethod.POST)
    public String orderrecipt(@ModelAttribute("userForm") User userForm, BindingResult bindingResult, Model model) {
        userValidator.validate(userForm, bindingResult);

        if (bindingResult.hasErrors()) {
            return "orderrecipt";
        }

        

        

        return "redirect:/welcome";
    }
    
    @RequestMapping(value = "/payment", method = RequestMethod.GET)
    public String payment(Model model) {
        model.addAttribute("userForm", new User());

        return "payment";
    }

    @RequestMapping(value = "/payment", method = RequestMethod.POST)
    public String payment(@ModelAttribute("userForm") User userForm, BindingResult bindingResult, Model model) {
        userValidator.validate(userForm, bindingResult);

        if (bindingResult.hasErrors()) {
            return "payment";
        }

        

        

        return "redirect:/welcome";
    }
    
    @RequestMapping(value = "/regularuser", method = RequestMethod.GET)
    public String regularuser(Model model) {
        model.addAttribute("userForm", new User());

        return "regularuser";
    }

    @RequestMapping(value = "/regularuser", method = RequestMethod.POST)
    public String regularuser(@ModelAttribute("userForm") User userForm, BindingResult bindingResult, Model model) {
        userValidator.validate(userForm, bindingResult);

        if (bindingResult.hasErrors()) {
            return "regularuser";
        }

        

        

        return "redirect:/welcome";
    }
    
    @RequestMapping(value = "/review", method = RequestMethod.GET)
    public String review(Model model) {
        model.addAttribute("userForm", new User());

        return "review";
    }

    @RequestMapping(value = "/review", method = RequestMethod.POST)
    public String review(@ModelAttribute("userForm") User userForm, BindingResult bindingResult, Model model) {
        userValidator.validate(userForm, bindingResult);

        if (bindingResult.hasErrors()) {
            return "review";
        }

        

        

        return "redirect:/welcome";
    }
    
    @RequestMapping(value = "/singlemenuitems", method = RequestMethod.GET)
    public String singlemenuitems(Model model) {
        model.addAttribute("userForm", new User());

        return "singlemenuitems";
    }

    @RequestMapping(value = "/singlemenuitems", method = RequestMethod.POST)
    public String singlemenuitems(@ModelAttribute("userForm") User userForm, BindingResult bindingResult, Model model) {
        userValidator.validate(userForm, bindingResult);

        if (bindingResult.hasErrors()) {
            return "singlemenuitems";
        }

        

        

        return "redirect:/welcome";
    }
    
    @RequestMapping(value = "/userinformation", method = RequestMethod.GET)
    public String userinformation(Model model) {
        model.addAttribute("userForm", new User());

        return "userinformation";
    }

    @RequestMapping(value = "/userinformation", method = RequestMethod.POST)
    public String userinformation(@ModelAttribute("userForm") User userForm, BindingResult bindingResult, Model model) {
        userValidator.validate(userForm, bindingResult);

        if (bindingResult.hasErrors()) {
            return "userinformation";
        }

        

        

        return "redirect:/welcome";
    }
    
    @RequestMapping(value = "/userpassedorder", method = RequestMethod.GET)
    public String userpassedorder(Model model) {
        model.addAttribute("userForm", new User());

        return "userpassedorder";
    }

    @RequestMapping(value = "/userpassedorder", method = RequestMethod.POST)
    public String userpassedorder(@ModelAttribute("userForm") User userForm, BindingResult bindingResult, Model model) {
        userValidator.validate(userForm, bindingResult);

        if (bindingResult.hasErrors()) {
            return "userpassedorder";
        }

        return "redirect:/welcome";
    }
    

    

    @RequestMapping(value = {"/", "/welcome"}, method = RequestMethod.GET)
    public String welcome(Model model) {
        return "welcome";
    }
}
