package com.visitingfaculty.controller;

import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

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
    public String getResume(@RequestParam(value = "resume_lid") int resume_lid,Model model) {

        model.addAttribute(resume_lid);
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

    @GetMapping("/resume-dashboard")
    public String getResumeDashboard(){
        return "resume-dashboard";
    }

    @GetMapping("/create-new-resume")
    public String getNewResumePage(@RequestParam Map<String, String> urlObject,Model model) {

        model.addAttribute("user_lid",urlObject.get("user_lid"));
        model.addAttribute("resume_lid",urlObject.get("resume_lid"));
        return "new-resume";
    }

}
