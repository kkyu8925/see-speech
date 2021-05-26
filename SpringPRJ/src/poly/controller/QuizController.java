package poly.controller;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import poly.service.IQuizService;

import javax.annotation.Resource;
import java.util.List;
import java.util.Map;

@Controller
public class QuizController {

    private final Logger log = Logger.getLogger(this.getClass());

    @Resource(name = "QuizService")
    private IQuizService quizService;

    @RequestMapping(value = "index")
    public String index(ModelMap model) throws Exception {

        log.info(this.getClass().getName() + ".index start!");

        List<Map<String, String>> rList = quizService.getQuizList();

        model.addAttribute("rList", rList);

        log.info(this.getClass().getName() + ".index end!");

        return "/index";
    }

}
