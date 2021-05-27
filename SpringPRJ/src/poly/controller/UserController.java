package poly.controller;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MainController {

    private final Logger log = Logger.getLogger(this.getClass());

    @RequestMapping(value = "login.do")
    public String login() throws Exception {

        log.info(this.getClass().getName() + ".login start!");

        log.info(this.getClass().getName() + ".login end!");

        return "/login/login";
    }

    @RequestMapping(value = "register.do")
    public String register() throws Exception {

        log.info(this.getClass().getName() + ".register start!");

        log.info(this.getClass().getName() + ".register end!");

        return "/login/register";
    }

    @RequestMapping(value = "findpw.do")
    public String findpw() throws Exception {

        log.info(this.getClass().getName() + ".findpw start!");

        log.info(this.getClass().getName() + ".findpw end!");

        return "/login/findpw";
    }

    @RequestMapping(value = "user.do")
    public String user() throws Exception {

        log.info(this.getClass().getName() + ".user start!");

        log.info(this.getClass().getName() + ".user end!");

        return "/user";
    }

}
