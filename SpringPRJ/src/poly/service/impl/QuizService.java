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

    // mongoDB collection name
    private final String colNm = "QuizCollection";
    private final String userQuizColNm = "UserQuizCollection";

    @Resource(name = "QuizMapper")
    private IQuizMapper quizMapper;

    @Override
    public List<Map<String, String>> getQuizList() throws Exception {

        log.info(this.getClass().getName() + ".getQuizList start!");

        List<Map<String, String>> rQuizList = quizMapper.getQuizList(colNm);

        if (rQuizList == null) {
            rQuizList = new ArrayList<>();
        }

        log.info(this.getClass().getName() + ".getQuizList end!");

        return rQuizList;
    }

    @Override
    public List<String> getQuizContList(String quizTitle, String quizSort) throws Exception {

        log.info(this.getClass().getName() + ".getQuizContList start!");

        List<String> rQuizContList = quizMapper.getQuizContList(colNm, quizTitle, quizSort);

        if (rQuizContList == null) {
            rQuizContList = new ArrayList<>();
        }

        log.info(this.getClass().getName() + ".getQuizContList end!");

        return rQuizContList;
    }

    @Override
    public void insertUserQuiz(Map<String, String> pMap) throws Exception {

        log.info(this.getClass().getName() + ".insertUserQuiz start!");

        quizMapper.insertUserQuiz(userQuizColNm, pMap);

        log.info(this.getClass().getName() + ".insertUserQuiz end!");

    }

    @Override
    public List<String> getUserQuizTitleList(String user_email) throws Exception {

        log.info(this.getClass().getName() + ".getUserQuizTitleList start!");

        List<String> rUserQuizTitleList = quizMapper.getUserQuizTitleList(userQuizColNm, user_email);

        if (rUserQuizTitleList == null) {
            rUserQuizTitleList = new ArrayList<>();
        }

        log.info(this.getClass().getName() + ".getUserQuizTitleList end!");

        return rUserQuizTitleList;
    }

    @Override
    public List<String> getUserQuizContList(String user_email, String quiz_title) throws Exception {

        log.info(this.getClass().getName() + ".getUserQuizContList start!");

        List<String> rUserQuizContList = quizMapper.getUserQuizContList(userQuizColNm, user_email, quiz_title);

        if (rUserQuizContList == null) {
            rUserQuizContList = new ArrayList<>();
        }

        log.info(this.getClass().getName() + ".getUserQuizContList end!");

        return rUserQuizContList;
    }

    @Override
    public boolean isQuizTitleExistForAJAX(String user_email, String quiz_title) throws Exception {

        log.info(this.getClass().getName() + ".isQuizTitleExistForAJAX start!");

        boolean res = quizMapper.isQuizTitleExistForAJAX(userQuizColNm, user_email, quiz_title);

        log.info(this.getClass().getName() + ".isQuizTitleExistForAJAX end!");

        return res;
    }

    @Override
    public int deleteUserQuiz(Map<String, Object> pMap) throws Exception {

        log.info(this.getClass().getName() + ".deleteUserQuiz start!");

        int res = quizMapper.deleteUserQuiz(userQuizColNm, pMap);

        log.info(this.getClass().getName() + ".deleteUserQuiz end!");

        return res;
    }

    @Override
    public int deleteOneQuiz(Map<String, Object> pMap) throws Exception {

        log.info(this.getClass().getName() + ".deleteOneQuiz start!");

        int res = quizMapper.deleteOneQuiz(userQuizColNm, pMap);

        log.info(this.getClass().getName() + ".deleteOneQuiz end!");

        return res;
    }

    @Override
    public int updateUserQuiz(Map<String, String> pMap) throws Exception {

        log.info(this.getClass().getName() + ".updateUserQuiz start!");

        int res = quizMapper.updateUserQuiz(userQuizColNm, pMap);

        log.info(this.getClass().getName() + ".updateUserQuiz end!");

        return res;
    }
}
