package poly.service;

import java.util.List;
import java.util.Map;

public interface IQuizService {

    List<Map<String, String>> getQuizList() throws Exception;

    List<String> getQuizContList(String quizTitle, String quizSort) throws Exception;
}
