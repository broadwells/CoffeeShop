package com.grandcircus.spring.controller;

import com.grandcircus.spring.UserInfo;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

/**
 * Created by broadwells on 5/8/17.
 */


@Controller
public class HomeController {

    @RequestMapping("/")
    public ModelAndView welcome(){
        return new ModelAndView("welcome","hello", "Welcome to JAVA BEANS!");
    }

    @RequestMapping(value="/Register", method= RequestMethod.GET)
    public ModelAndView newUser() {
        return new ModelAndView("coffee-user", "command", new UserInfo());
    }

    @RequestMapping(value="/AddUser", method=RequestMethod.POST)
    public String addUser(UserInfo user, Model model){
        model.addAttribute("firstName", user.getFirstName());
        model.addAttribute("lastName", user.getLastName());
        model.addAttribute("email", user.getEmail());
        model.addAttribute("password", user.getPassword());
        return "result";
    }
}
