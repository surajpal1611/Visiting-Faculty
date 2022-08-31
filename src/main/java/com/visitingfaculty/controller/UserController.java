package com.visitingfaculty.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.visitingfaculty.dto.UserDto;

@Controller
public class UserController {
    
    @GetMapping("/login")
    public String getLoginPage() {
        return "login";
    }

    @GetMapping("/register")
    public String getRegistrationPage() {
        return "register";
    }

    @GetMapping("/resume")
    public String getResume() {
        return "resume";
    }

    @GetMapping("/dashboard")
    public String getDashboard(HttpSession httpSession) {
        // String user_id = (String) httpSession.getAttribute("user_id");
        // System.out.println(user_id);
        // if (user_id != null) {
            return "dashboard";
        // }
        // return "redirect:/login";
      
    }
    
    @PostMapping("/verify-login")
    public String verifyUserLogin( UserDto object ,HttpSession httpSession) {

        // if user not exist then we will generatae a random 6 digit token for
        // verification
        // System.out.println(userDto);
        System.out.println(object);

        // httpSession.setAttribute("user_id", userDto.getUser_id());

        return "redirect:/dashboard";
    }

    @GetMapping("/logout")
    public String logout(HttpSession httpSession) {

        httpSession.invalidate();
        return "login";
    }

}
