package com.visitingfaculty.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

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

    @GetMapping("/logout")
    public String logout(HttpSession httpSession) {

        httpSession.invalidate();
        return "login";
    }

    @GetMapping("/visiting-faculty-applications")
    public String getFacultyApplcation() {
        return "resume-search";
    }

}
