package poly.controller;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MainController {
    private Logger log = Logger.getLogger(this.getClass());


    @RequestMapping(value = "chat")
    public String chat() throws Exception {

        log.info(this.getClass().getName() + ".chat start!");

        log.info(this.getClass().getName() + ".chat end!");

        return "/chat";
    }

    @RequestMapping(value = "create")
    public String create() throws Exception {

        log.info(this.getClass().getName() + ".create start!");

        log.info(this.getClass().getName() + ".create end!");

        return "/create";
    }

    @RequestMapping(value = "findpw")
    public String findpw() throws Exception {

        log.info(this.getClass().getName() + ".findpw start!");

        log.info(this.getClass().getName() + ".findpw end!");

        return "/findpw";
    }

    @RequestMapping(value = "index")
    public String index() throws Exception {

        log.info(this.getClass().getName() + ".index start!");

        log.info(this.getClass().getName() + ".index end!");

        return "/index";
    }

    @RequestMapping(value = "listPage")
    public String listPage() throws Exception {

        log.info(this.getClass().getName() + ".listPage start!");

        log.info(this.getClass().getName() + ".listPage end!");

        return "listPage";
    }

    @RequestMapping(value = "login")
    public String login() throws Exception {

        log.info(this.getClass().getName() + ".login start!");

        log.info(this.getClass().getName() + ".login end!");

        return "/login";
    }

    @RequestMapping(value = "play")
    public String play() throws Exception {

        log.info(this.getClass().getName() + ".play start!");

        log.info(this.getClass().getName() + ".play end!");

        return "/play";
    }

    @RequestMapping(value = "register")
    public String register() throws Exception {

        log.info(this.getClass().getName() + ".register start!");

        log.info(this.getClass().getName() + ".register end!");

        return "/register";
    }

    @RequestMapping(value = "user")
    public String user() throws Exception {

        log.info(this.getClass().getName() + ".user start!");

        log.info(this.getClass().getName() + ".user end!");

        return "/user";
    }

    @RequestMapping(value = "userList")
    public String userList() throws Exception {

        log.info(this.getClass().getName() + ".userList start!");

        log.info(this.getClass().getName() + ".userList end!");

        return "/userList";
    }


}
