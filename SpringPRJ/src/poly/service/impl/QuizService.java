package poly.service.impl;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Service;
import poly.persistence.mongo.IQuizMapper;
import poly.service.IQuizService;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

@Service("QuizService")
public class QuizService implements IQuizService {

    private final Logger log = Logger.getLogger(this.getClass());

    @Resource(name = "QuizMapper")
    private IQuizMapper quizMapper;

    @Override
    public List<Map<String, String>> getQuizList() {

        log.info(this.getClass().getName() + ".getQuizList start!");

        String colNm = "QuizCollection";

        List<Map<String, String>> rList = quizMapper.getQuizList(colNm);

        if (rList == null) {
            rList = new ArrayList<>();
        }

        log.info(this.getClass().getName() + ".getQuizList end!");

        return rList;
    }
}
