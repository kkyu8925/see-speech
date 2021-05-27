package poly.controller;

import com.google.gson.JsonObject;
import com.google.gson.JsonParser;
import com.mashape.unirest.http.HttpResponse;
import com.mashape.unirest.http.Unirest;
import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import poly.util.CmmUtil;

import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.Map;

@Controller
public class ChatController {

    private final Logger log = Logger.getLogger(this.getClass());

    @RequestMapping(value = "apiChat.do")
    public String apiChat() throws Exception {

        log.info(this.getClass().getName() + ".apiChat start!");

        log.info(this.getClass().getName() + ".apiChat end!");

        return "/chat/apiChat";
    }

    @RequestMapping(value = "userChat.do")
    public String userChat() throws Exception {

        log.info(this.getClass().getName() + ".userChat start!");

        log.info(this.getClass().getName() + ".userChat end!");

        return "/chat/userChat";
    }

    @RequestMapping(value = "chat/msg.do", method = RequestMethod.POST)
    @ResponseBody
    public Map<String, String> msg(HttpServletRequest request) throws Exception {

        log.info(this.getClass().getName() + ".msg Start!");

        String msg = CmmUtil.nvl(request.getParameter("send_msg"));

        HttpResponse<String> response = Unirest.post("https://wsapi.simsimi.com/190410/talk")
                .header("content-type", "application/json")
                .header("x-api-key", "TOi1fvhyLPGqs0sg9w-4uQA6KyL8FYeGF8wnaD9R")
                .header("cache-control", "no-cache")
                .header("postman-token", "42bb65e8-40e3-e839-70dc-a2ce3ea305a2")
                .body("{\r\n            \"utext\": \"" + msg + "\", \r\n            \"lang\": \"ko\" \r\n     }")
                .asString();

        JsonObject result_object = (JsonObject) JsonParser.parseString(response.getBody());

        String resMsg = result_object.get("atext").getAsString();
        log.info("res_msg :" + resMsg);

        Map<String, String> pMap = new HashMap<>();
        pMap.put("res_msg", resMsg);

        log.info(this.getClass().getName() + ".msg End!");

        return pMap;
    }


}
