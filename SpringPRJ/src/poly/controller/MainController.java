package poly.controller;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MainController {

    private final Logger log = Logger.getLogger(this.getClass());

    @RequestMapping(value = "apiChat")
    public String apiChat() throws Exception {

        log.info(this.getClass().getName() + ".apiChat start!");

        log.info(this.getClass().getName() + ".apiChat end!");

        return "/chat/apiChat";
    }

    @RequestMapping(value = "userChat")
    public String userChat() throws Exception {

        log.info(this.getClass().getName() + ".userChat start!");

        log.info(this.getClass().getName() + ".userChat end!");

        return "/chat/userChat";
    }

    @RequestMapping(value = "create")
    public String create() throws Exception {

        log.info(this.getClass().getName() + ".create start!");

        log.info(this.getClass().getName() + ".create end!");

        return "/create";
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

        return "/listPage";
    }

    @RequestMapping(value = "login")
    public String login() throws Exception {

        log.info(this.getClass().getName() + ".login start!");

        log.info(this.getClass().getName() + ".login end!");

        return "/login/login";
    }

    @RequestMapping(value = "register")
    public String register() throws Exception {

        log.info(this.getClass().getName() + ".register start!");

        log.info(this.getClass().getName() + ".register end!");

        return "/login/register";
    }

    @RequestMapping(value = "findpw")
    public String findpw() throws Exception {

        log.info(this.getClass().getName() + ".findpw start!");

        log.info(this.getClass().getName() + ".findpw end!");

        return "/login/findpw";
    }

    @RequestMapping(value = "play")
    public String play() throws Exception {

        log.info(this.getClass().getName() + ".play start!");

        log.info(this.getClass().getName() + ".play end!");

        return "/play";
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
