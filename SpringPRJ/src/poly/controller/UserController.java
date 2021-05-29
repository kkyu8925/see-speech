package poly.controller;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import poly.service.IUserService;
import poly.util.CmmUtil;
import poly.util.EncryptUtil;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.Map;

@Controller
public class UserController {

    private final Logger log = Logger.getLogger(this.getClass());

    @Resource(name = "UserService")
    private IUserService userService;

    @RequestMapping(value = "loginPage.do")
    public String loginPage() throws Exception {

        log.info(this.getClass().getName() + ".loginPage start!");

        log.info(this.getClass().getName() + ".loginPage end!");

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

    @RequestMapping(value = "insertUser.do", method = RequestMethod.POST)
    public String insertUser(HttpServletRequest request, ModelMap model) throws Exception {

        log.info(this.getClass().getName() + ".insertUser start");

        String msg = "";

        try {

            // 이메일 AES-128-CBC 암호화
            String user_email = EncryptUtil.encAES128CBC(CmmUtil.nvl(request.getParameter("user_email")));
            String user_name = CmmUtil.nvl(request.getParameter("user_name"));
            // 비밀번호 해시 알고리즘 암호화
            String user_pw = EncryptUtil.encHashSHA256(CmmUtil.nvl(request.getParameter("user_pw")));

            log.info("user_email : " + user_email);
            log.info("user_name : " + user_name);
            log.info("user_pw : " + user_pw);

            Map<String, Object> rMap = new HashMap<>();
            rMap.put("userEmail", user_email);
            rMap.put("userName", user_name);
            rMap.put("userPw", user_pw);

            userService.insertUser(rMap);

            msg = "회원가입하셨습니다.";

        } catch (Exception e) {
            // 저장 실패 시
            msg = "실패하였습니다! : " + e;
            log.info(e.toString());
            e.printStackTrace();
        }

        model.addAttribute("msg", msg);
        model.addAttribute("url", "/loginPage.do");

        log.info(this.getClass().getName() + ".insertUser end");

        return "/redirect";
    }

    @RequestMapping("getUserExist.do")
    @ResponseBody
    public Map<String, String> getUserExist(HttpServletRequest request) throws Exception {

        log.info(this.getClass().getName() + ".getUserExist start");

        Map<String, String> rMap = new HashMap<>();

        try {
            // 이메일 AES-128-CBC 암호화
            String userEmail = EncryptUtil.encAES128CBC(CmmUtil.nvl(request.getParameter("userEmail")));
            log.info("userEmail : " + userEmail);

            rMap = userService.getUserExist(userEmail);

        } catch (Exception e) {
            rMap.put("res", "exception");
            log.info(e.toString());
            e.printStackTrace();
        }

        log.info(this.getClass().getName() + ".getUserExist end");

        return rMap;
    }

    @RequestMapping("login.do")
    public String login(HttpServletRequest request, ModelMap model, HttpSession session) throws Exception {

        log.info(this.getClass().getName() + ".login start");

        int res;

        String msg = "";
        String url = "";

        try {

            // 이메일 AES-128-CBC 암호화
            String user_email = EncryptUtil.encAES128CBC(CmmUtil.nvl(request.getParameter("user_email")));
            // 비밀번호 해시 알고리즘 암호화
            String user_pw = EncryptUtil.encHashSHA256(CmmUtil.nvl(request.getParameter("user_pw")));

            log.info("user_email : " + user_email);
            log.info("user_pw : " + user_pw);

            Map<String, String> pMap = new HashMap<>();
            pMap.put("user_email", user_email);
            pMap.put("user_pw", user_pw);

            res = userService.getUserInfo(pMap);

            if (res == 1) {
                session.setAttribute("SS_USER_EMAIL", EncryptUtil.decAES128CBC(user_email));
            }

        } catch (Exception e) {
            res = -1;
            log.info(e.toString());
            e.printStackTrace();
        }

        if (res == 1) {
            msg = "로그인에 성공했습니다!";
            url = "/index.do";
        } else if (res == 0) {
            msg = "아이디를 다시 확인해주세요";
            url = "/loginPage.do";
        } else if (res == -1) {
            msg = "서버 오류입니다. 다시 시도해주세요.";
            url = "/loginPage.do";
        }

        log.info("res : " + res);

        model.addAttribute("msg", msg);
        model.addAttribute("url", url);

        log.info(this.getClass().getName() + ".login end");

        return "/redirect";

    }

}
