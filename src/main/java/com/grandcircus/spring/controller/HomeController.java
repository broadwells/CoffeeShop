package com.grandcircus.spring.controller;

import com.grandcircus.spring.UserInfo;
import com.grandcircus.spring.models.ItemsEntity;
import com.grandcircus.spring.models.UsersEntity;
import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.util.ArrayList;

@Controller
public class HomeController {

    @RequestMapping("/")
    public ModelAndView welcome(){
        return new ModelAndView("welcome","hello", "Welcome to JAVA BEANS!");
    }

    @RequestMapping(value="/register", method= RequestMethod.GET)
    public ModelAndView newUser(){

        return new ModelAndView("coffee-user", "command", new UserInfo());
    }

    @RequestMapping(value = "/adduser", method = RequestMethod.POST)
    public ModelAndView addUser(@RequestParam("firstName") String nameFirst, @RequestParam("lastName") String nameLast,
                                @RequestParam("email") String email, @RequestParam("password") String password,
                                @RequestParam("coffeeChoice") String coffeeType, @RequestParam("shop") String shopLocate) {
        Configuration cfg = new Configuration().configure("hibernate.cfg.xml");
        SessionFactory sessionFact = cfg.buildSessionFactory();
        Session session = sessionFact.openSession();

        Transaction tx = session.beginTransaction();

        UsersEntity newCust = new UsersEntity();

        String coffee = "";
        String locate = "";

        if (coffeeType.equals("dark")) {
            coffee = "Dark Roast";
        } else if (coffeeType.equals("capp")) {
            coffee = "Cappuccino";
        } else if (coffeeType.equals("latte")) {
            coffee = "Latte";
        } else if (coffeeType.equals("macch")) {
            coffee = "Macchiato";
        }
        if (shopLocate.equals("1")) {
            locate = "123 Wall St";
        } else if (shopLocate.equals("2")) {
            locate = "789 Sesame St";
        } else if (shopLocate.equals("3")) {
            locate = "456 Woodward Ave";
        }


        newCust.setFirstName(nameFirst);
        newCust.setLastName(nameLast);
        newCust.setEmail(email);
        newCust.setPassword(password);
        newCust.setCoffeeType(coffee);
        newCust.setShopAddress(locate);


        session.save(newCust);
        tx.commit();
        session.close();

        return new ModelAndView("result", "user", newCust);

    }

    @RequestMapping(value="/products", method=RequestMethod.POST)
    public ModelAndView listItems() {
        Configuration cfg = new Configuration().configure("hibernate.cfg.xml");

        SessionFactory sessionFact = cfg.buildSessionFactory();

        Session selectItems = sessionFact.openSession();

        selectItems.beginTransaction();

        Criteria c = selectItems.createCriteria(ItemsEntity.class);

        ArrayList<ItemsEntity> itemList = (ArrayList<ItemsEntity>) c.list();


        return new ModelAndView("products", "item", itemList);
    }
}
