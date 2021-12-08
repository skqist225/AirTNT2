package com.airtnt.airtntapp.stats;

import com.airtnt.airtntapp.user.UserService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/admin")
public class StatsAdminController {
    @Autowired
    UserService userService;

    @GetMapping("/stats")
    public String stats(Model model){
        Integer numberOfUsers = userService.getNumberOfUser();
        model.addAttribute("numberOfUsers", numberOfUsers);
        return "stats/stats";
    }
}
