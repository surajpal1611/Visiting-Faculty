package com.visitingfaculty.controller;

import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.visitingfaculty.dao.UserDaoInterface;
import com.visitingfaculty.model.User;

@Controller
public class UserController {


    @Autowired
    UserDaoInterface userDaoInterface;

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

        User user = userDaoInterface.getUserByResume(resume_lid);

        model.addAttribute("resume_lid",resume_lid);
        model.addAttribute("user_lid", user.getId());
        model.addAttribute("user_id", user.getUser_id());
        return "resume";
    }

    @GetMapping("/dashboard")
    public String getDashboard(HttpSession httpSession,Model m) {
        // String user_id = (String) httpSession.getAttribute("user_id");
        // System.out.println(user_id);
        // if (user_id != null) {
        String role = (String) httpSession.getAttribute("role");
            
        if (role.equals("ROLE_ADMIN")) {
            return "dashboard";
        } else if(role.equals("User")) {
            m.addAttribute("user_id", httpSession.getAttribute("user_id"));
            return "faculty/dashboard";
        }
        return "redirect:/login";
        // }
        // return "redirect:/login";
    }

    @GetMapping("/logout")
    public String logout(HttpSession httpSession) {

        httpSession.invalidate();
        return "redirect:/login";
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

    @GetMapping("/performa")
    public String getPerforma() {
        return "performa-page";
    }

    @GetMapping("/performa-creation")
    public String getPerformaCreation(@RequestParam(value = "application_lid") int application_lid,Model m) {
        m.addAttribute("application_lid", application_lid);
        return "performa-creation";
    }

    @GetMapping("/faculty-reg")
    public String getNewFaculty() {
        
        return "faculty-reg";
    }

    @GetMapping("/view-resume")
    public String viewResume(@RequestParam(value = "resume_lid") int resume_lid,Model model) {
        User user = userDaoInterface.getUserByResume(resume_lid);
        model.addAttribute("resume_lid",resume_lid);
        model.addAttribute("user_lid", user.getId());
        model.addAttribute("user_id", user.getUser_id());
        return "view-resume";
    }

    @GetMapping("/job-performer-page")
    public String getperformerpage() {
        return "job-performer-page";
    }

}
