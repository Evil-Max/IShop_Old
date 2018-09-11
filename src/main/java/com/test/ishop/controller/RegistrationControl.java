package com.test.ishop.controller;

import com.test.ishop.domain.Cart;
import com.test.ishop.domain.Client;
import com.test.ishop.domain.Role;
import com.test.ishop.repos.ClientRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.Collections;
import java.util.Map;

@Controller
public class RegistrationControl {
    @Autowired
    private ClientRepo clientRepo;

    private String errorMessage="";

    @GetMapping("/registration")
    public String registration(Model model) {


        return "registration";
    }

    @PostMapping("/register")
    public String register(

            @RequestParam String login,
            @RequestParam String password,
            @RequestParam String username,
            @RequestParam String usersurname,
            @RequestParam String userpatronymic,
            @RequestParam String address,
            @RequestParam String email,

            @RequestParam Map<String, String> form,

            Model model
    ) {

        if ((login.isEmpty())||(password.isEmpty())) {
            errorMessage="Не заполнены все поля";
            //fillModel(model);
            model.addAttribute("errormessage",errorMessage);
            return "registration";
        }
        Client client;
        client = clientRepo.findByUsername(login);
        if (client!=null) {
            errorMessage="Пользователь уже существует";

            model.addAttribute("errormessage",errorMessage);
            return "registration";
        }
        client = new Client();
        client.setActive(true);
        client.setUsername(login);
        client.setPassword(password);

        client.setFirst_name(username);
        client.setSurname(usersurname);
        client.setPatronymic(userpatronymic);
        client.setAddress(address);
        client.setEmail(email);
        client.setRoles(Collections.singleton(Role.USER));
        clientRepo.save(client);

        return "redirect:/";
    }

}
