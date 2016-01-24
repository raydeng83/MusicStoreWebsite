package com.musicstorewebsite.controller.admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by Le on 1/23/2016.
 */

@Controller
@RequestMapping("/admin")
public class AdminHome {

    @RequestMapping
    public String adminPage() {
        return "admin";
    }
}
