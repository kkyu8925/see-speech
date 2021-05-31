package poly.controller;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import poly.service.IQuizService;
import poly.util.CmmUtil;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;
import java.util.Map;

@Controller
public class QuizController {

    private final Logger log = Logger.getLogger(this.getClass());

    @Resource(name = "QuizService")
    private IQuizService quizService;

    @RequestMapping(value = "index.do")
    public String index(ModelMap model) throws Exception {

        log.info(this.getClass().getName() + ".index start!");

        List<Map<String, String>> rQuizList = quizService.getQuizList();

        model.addAttribute("rQuizList", rQuizList);

        log.info(this.getClass().getName() + ".index end!");

        return "/index";
    }

    @RequestMapping(value = "listPage.do")
    public String listPage(HttpServletRequest request, ModelMap model, HttpSession session) throws Exception {

        log.info(this.getClass().getName() + ".listPage start!");

        String quizTitle = CmmUtil.nvl(request.getParameter("quizTitle"));
        String quizSort = CmmUtil.nvl(request.getParameter("quizSort"));

        log.info("quizTitle : " + quizTitle);
        log.info("quizSort : " + quizSort);

        List<String> rQuizContList = quizService.getQuizContList(quizTitle, quizSort);

        session.setAttribute("SS_QUIZ_CONT_LIST", rQuizContList);

        model.addAttribute("quizTitle", quizTitle);

        log.info(this.getClass().getName() + ".listPage end!");

        return "quiz/quizListPage";
    }

    @RequestMapping(value = "play.do")
    public String play(HttpServletRequest request, ModelMap model) throws Exception {

        log.info(this.getClass().getName() + ".play start!");

        String quizContTitle = CmmUtil.nvl(request.getParameter("quizContTitle"));

        log.info("quizContTitle : " + quizContTitle);

        model.addAttribute("quizContTitle", quizContTitle);

        log.info(this.getClass().getName() + ".play end!");

        return "quiz/quizPlay";
    }

    @RequestMapping(value = "userQuizList.do")
    public String userQuizList(HttpSession session, ModelMap model) throws Exception {

        log.info(this.getClass().getName() + ".userQuizList start!");

        String SS_USER_EMAIL = CmmUtil.nvl((String) session.getAttribute("SS_USER_EMAIL"));

        if (SS_USER_EMAIL.equals("")) {
            model.addAttribute("msg", "로그인이 필요합니다.");
            model.addAttribute("url", "/loginPage.do");
            return "/redirect";
        }

        log.info(this.getClass().getName() + ".userQuizList end!");

        return "user/userQuizList";
    }

    @RequestMapping(value = "create.do")
    public String create() throws Exception {

        log.info(this.getClass().getName() + ".create start!");

        log.info(this.getClass().getName() + ".create end!");

        return "quiz/quizCreate";
    }

}
